package com.tp.funding.service;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.EventDao;
import com.tp.funding.dto.Event;
import com.tp.funding.util.FileCopy;
import com.tp.funding.util.Paging;
@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventDao eventDao;
	@Override
	public List<Event> eventAllList() {
		return eventDao.eventAllList();
	}
	@Override
	public List<Event> eventAdminList(String pageNum) {
		int eventTotalCount = eventDao.totEvent();
		Paging paging = new Paging(eventTotalCount, pageNum, 5, 5);
		int startRow = paging.getStartRow();
		int endRow = paging.getEndRow();
		Event event = new Event();
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		return eventDao.eventAdminList(event);
	}
	@Override
	public List<Event> eventDoingList(String pageNum, Event event) {
		int eventTotalCount = eventDao.totDoingEvent(event);
		//pageSize = 5 , BlockSize =5
		Paging paging = new Paging(eventTotalCount, pageNum, 6, 5);
		int startRow = paging.getStartRow();
		int endRow = paging.getEndRow();
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		return eventDao.eventDoingList(event);
	}

	@Override
	public List<Event> eventEndingList(String pageNum) {
		int eventTotalCount = eventDao.totEndingEvent();
		//pageSize = 5 , BlockSize =5
		Paging paging = new Paging(eventTotalCount, pageNum, 5, 5);
		int startRow = paging.getStartRow();
		int endRow = paging.getEndRow();
		Event event = new Event();
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		return eventDao.eventEndingList(event);
	}

	@Override
	public Event eventDetail(int eventNumber) {
		return eventDao.eventDetail(eventNumber);
	}

	@Override
	public int eventWrite(Event event,MultipartHttpServletRequest mRequest) {
		String uploadPath = mRequest.getRealPath("images/event/");
		String backupPath = "D:/mega_IT/team_project/funding/src/main/webapp/images/event/";
		String eventThumbnailImage =null, eventDetailImage =null, eventProductImage=null;
		String[] imagesFile = {"","",""};
		Iterator<String> params = mRequest.getFileNames();
		int index =0;
		String param ="";
		while(index<3 && params.hasNext()) {
			param =params.next();
			MultipartFile mFile = mRequest.getFile(param);
			String originalFileName = mFile.getOriginalFilename();
			imagesFile[index] =originalFileName;
			
			if(imagesFile[index] != null && !imagesFile[index].equals("")) {
				if(new File(uploadPath + imagesFile[index]).exists()) {
					imagesFile[index] = System.currentTimeMillis() + imagesFile[index];
				}
				
				try {
					mFile.transferTo(new File(uploadPath +imagesFile[index]));
					FileCopy filecopy = new FileCopy();
					int fileResult = filecopy.filecopy(uploadPath+imagesFile[index], backupPath+imagesFile[index]);
					if(fileResult == 1) {
						System.out.println("복사 성공");
						if(index ==0) {
							eventThumbnailImage = imagesFile[index];
							event.setEventThumbnailImage(eventThumbnailImage);
						}else if(index == 1) {
							eventDetailImage = imagesFile[index];
							event.setEventDetailImage(eventDetailImage);
						}else if(index ==2) {
							eventProductImage =imagesFile[index];
							event.setEventProductImage(eventProductImage);
						}
					}else {
						System.out.println("복사 실패");
					}
				} catch (IOException e) {
					System.out.println(e.getMessage());
				}
				
			}
			 index++;
		}
		if(event.getEventThumbnailImage()==null) {
			event.setEventThumbnailImage("noImage.png");
		}
		if(event.getEventDetailImage()==null) {
			event.setEventDetailImage("noImage.png");
		}
		if(event.getEventProductImage()==null) {
			event.setEventProductImage("noImage.png");
		}
		
		return eventDao.eventWrite(event);
	}

	@Override
	public int totEvent() {
		return eventDao.totEvent();
	}


	@Override
	public int totDoingEvent(Event event) {
		return eventDao.totDoingEvent(event);
	}

	@Override
	public int totEndingEvent() {
		return eventDao.totEndingEvent();
	}
	@Override
	public int eventColseStep1(int eventNumber) {
		return eventDao.eventColseStep1(eventNumber);
	}
	@Override
	public int eventColseStep2(Event event) {
		return eventDao.eventColseStep2(event);
	}
	@Override
	public int eventClose(int eventNumber) {
		return eventDao.eventClose(eventNumber);
	}

}
