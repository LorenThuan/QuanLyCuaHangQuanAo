package dao;

import java.util.List;
import java.util.Map;

import dto.HoaDon;

public interface ThongKeDoanhThuDao {
	public double tinhTongTienBanDuocTheoThang(int thang, int nam);
	public List<HoaDon> layTatCaHoaDonTheoThangNam(int thang, int nam);
	public HoaDon layHoaDonTheoMa(String maHoaDon);
}
