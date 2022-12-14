package dao;

import java.util.ArrayList;

import dto.LoaiSanPham;

public interface LoaiSanPhamDao {
	public ArrayList<LoaiSanPham> getTatCaLoaiSanPham();
	public boolean themLoaiSanPham (LoaiSanPham loaiSanPham);
	public boolean xoaLoaiSanPham (String maLoaiSanPham);
	public boolean capNhatLoaiSanPham (LoaiSanPham loaiSanPham);
	public ArrayList<LoaiSanPham> timKiemLoaiSanPham(String tuKhoa);
}
