package com.tp.funding.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tp.funding.dao.CompanyDao;
import com.tp.funding.dto.Company;
import com.tp.funding.util.FileCopy;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyDao companyDao;

	@Autowired
	private JavaMailSender mailSender;

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

		String uploadPath = mRequest.getRealPath("images/profile/");
		String backupPath = "D:/mega_IT/teamProject/funding/src/main/webapp/images/profile/";
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
					FileCopy filecopy = new FileCopy();
					int fileResult = filecopy.filecopy(uploadPath + companyProfileImage, backupPath + companyProfileImage);
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

	@Override
	public int companyInfoModify(MultipartHttpServletRequest mRequest, Company company) {
		String uploadPath = mRequest.getRealPath("images/profile/");
		String backupPath = "D:/mega_IT/teamProject/funding/src/main/webapp/images/profile/";
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
					FileCopy filecopy = new FileCopy();
					int fileResult = filecopy.filecopy(uploadPath + companyProfileImage, backupPath + companyProfileImage);
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
		return companyDao.companyInfoModify(company);
	}

	@Override
	public int companyLoginCheck(Company company) {
		return companyDao.companyLoginCheck(company);
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
	public int companyInFundingModify(int companyInFunding,String companyId) {
		Company company = new Company();
		company.setCompanyInFunding(companyInFunding);
		company.setCompanyId(companyId);
		return companyDao.companyInFundingModify(company);
	}

	@Override
	public int tempPasswordChange(final Company company) {

		String tempPassword = "";
		for (int i = 0; i < 8; i++) {
			char lowerStr = (char) (Math.random() * 26 + 97);
			if (i % 2 == 0) {
				tempPassword += (int) (Math.random() * 10);
			} else {
				tempPassword += lowerStr;
			}
		}

		company.setCompanyPassword(tempPassword);
		MimeMessagePreparator tempPasswordMsg = new MimeMessagePreparator() {

			String content = "<h1>" + company.getCompanyId() + "님의 임시비밀번호 안내입니다.</h1><br>" + "<div> 임시 비밀번호는 : "
					+ company.getCompanyPassword() + " 입니다.<br>" + "임시비밀번호로 로그인 후, 비밀번호를 수정해 주세요.</div>";

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {

				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(company.getCompanyId()));
				mimeMessage.setFrom(new InternetAddress("wogur698@gmail.com"));
				mimeMessage.setSubject(company.getCompanyId() + "님 비밀번호 안내 메일입니다.");
				mimeMessage.setText(content, "utf-8", "html");

			}
		};

		mailSender.send(tempPasswordMsg);
		return companyDao.tempPasswordChange(company);
	}

	@Override
	public int companyFundraisingSuccess(Company company) {
		return companyDao.companyFundraisingSuccess(company);
	}

}
