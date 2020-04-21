package com.tp.funding.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class FileCopy {
	public int filecopy(String serverFile, String backupFile) {
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

}
