package com.tp.funding.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.CompanyDao;
import com.tp.funding.dto.Company;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyDao companyDao;
	
	@Override
	public List<Company> companyList() {
		return companyDao.companyList();
	}

	@Override
	public List<Company> companySearchList(String companyName) {
		return companyDao.companySearchList(companyName);
	}

	@Override
	public Company companyDetail(String companyId) {
		return companyDao.companyDetail(companyId);
	}

	@Override
	public int companyJoin(MultipartHttpServletRequest mRequest, Company company) {
		
		String uploadPath = mRequest.getRealPath("companyProfileUpload/");
		String backupPath = "D:/mega_IT/teamProject/funding/src/main/webapp/companyProfileUpload/";		
		String companyProfileImage = null;
		
		Iterator<String> params = mRequest.getFileNames(); // file
		if (params.hasNext()) {
			String param = params.next();
			MultipartFile mFile = mRequest.getFile(param); // 파라미터의 파일 객체

			String originalFileName = mFile.getOriginalFilename(); // 업로드 했을 때, 원래 파일 이름
			companyProfileImage = originalFileName;

			if (companyProfileImage != null && !companyProfileImage.equals("")) {
				if (new File(uploadPath + companyProfileImage).exists()) { // 첨부파일과 같은 이름의 파일이 서버에 존재하는 경우 변경~
					companyProfileImage = System.currentTimeMillis() + companyProfileImage;
				} // if 파일이름 변경

				try {
					mFile.transferTo(new File(uploadPath + companyProfileImage));
					System.out.println("서버에 저장된 파일 : " + uploadPath + companyProfileImage);
					System.out.println("백업위해 복사할 파일 : " + backupPath + companyProfileImage);
					int fileResult = filecopy(uploadPath + companyProfileImage, backupPath + companyProfileImage);
					if (fileResult == 1) {
						System.out.println("복사성공");
					} else {
						System.out.println("복사실패");
					}

				} catch (IOException e) {
					System.out.println(e.getMessage());
				}
			}

		}
		
		company.setCompanyProfileImage(companyProfileImage);
		return companyDao.companyJoin(company);
	}

	private int filecopy(String serverFile, String backupFile) {
		int result = 0;
		
		FileInputStream is = null;
		FileOutputStream os = null;

		File file = new File(serverFile);

		try {

			is = new FileInputStream(serverFile);
			os = new FileOutputStream(backupFile);
			byte[] buff = new byte[(int) file.length()];
			while (true) {
				int nReadyByte = is.read(buff);
				if (nReadyByte == -1)
					break;
				os.write(buff, 0, nReadyByte);
			}

			result = 1;

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {

				if (os != null)
					os.close();
				if (is != null)
					is.close();

			} catch (Exception e2) {
				System.out.println(e2.getMessage());
			}
		}		
		
		return result;
	}

	@Override
	public int companyLoginCheck(Company company) {
		return companyDao.companyLoginCheck(company);
	}

	@Override
	public int companyInfoModify(Company company) {
		return companyDao.companyInfoModify(company);
	}

	@Override
	public int companyOutSite(String companyId) {
		return companyDao.companyOutSite(companyId);
	}

	@Override
	public int companyAccountModify(Company company) {
		return companyDao.companyAccountModify(company);
	}

	@Override
	public int companyBalanceModify(Company company) {
		return companyDao.companyBalanceModify(company);
	}

	@Override
	public int companyInFundingModify(Company company) {
		return companyDao.companyInFundingModify(company);
	}

}
