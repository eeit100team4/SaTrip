package com.web.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.hotel.HotelBean;
import com.web.service.hotel.HotelService;

@Controller
public class HotelController {
	@Autowired
	HotelService hotelService;
	// 從首頁點選飯店時的dispatcher

	@Autowired
	ServletContext context;

	// 顯示HotelIndex
	@RequestMapping("/_Hotel/HotelIndex")
	public String list2(Model model) {
		return "_Hotel/HotelIndex";
	}

	// 取得HotelBean資料，顯示多筆Hotel資料
	@RequestMapping("/_Hotel/DisplayHotel")
	public String list(Model model) {
		List<HotelBean> list = hotelService.getAllHotels();
		model.addAttribute("hotels", list);
		return "_Hotel/DisplayHotel";
	}

	// 顯示DisplayRoom
	@RequestMapping("/_Hotel/DisplayRoom")
	public String getProductById(Model model) {
		return "_Hotel/DisplayRoom";
	}

	// 取的Hotel照片(顯示照片)----(在同一個應用系統裡，對於命名相同(getPicure)dispatcher無法辨識)
	@RequestMapping(value = "/getPic/{hotel_id}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer hotel_id) {
		HotelBean bean = hotelService.getHotelById(hotel_id);
		HttpHeaders headers = new HttpHeaders();
		Blob blob = bean.getCoverImage();
		int len = 0;
		byte[] media = null;
		if (blob != null) {
			try {
				len = (int) blob.length();
				media = blob.getBytes(1, len);
			} catch (SQLException e) {
				throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
			}
		} else {
			InputStream is = context.getResourceAsStream("/Traveler/images/NoImage.jpg");
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			byte[] b = new byte[8192];
			try {
				while ((len = is.read(b)) != -1) {
					baos.write(b, 0, len);
				}

			} catch (Exception e) {
				throw new RuntimeException("ProductController的getPicture()發生IOException: " + e.getMessage());
			}
			media = baos.toByteArray();
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	// <___________________________________________________________________________________________>
	// 修改多筆Hotel資料

	// @RequestMapping("/update/stock")
	// public String updateStock(Model model) {
	// hotelService.updateAllStock();
	// return "redirect:/products";
	// }

	// <___________________________________________________________________________________________>
	// 查詢單筆單間資訊

	// @RequestMapping("/product")
	// public String getProductById(@RequestParam("id") Integer id, Model model) {
	// model.addAttribute("product", productService.getProductById(id));
	// return "product";
	// }
	// <___________________________________________________________________________________________>

	// 新增資料
	// @RequestMapping(value = "/products/add", method = RequestMethod.GET)
	// public String getAddNewProductForm(Model model) {
	// BookBean bb = new BookBean();
	// model.addAttribute("bookBean", bb);
	// return "addProduct";
	// }
	//
	// @RequestMapping(value = "/products/add", method = RequestMethod.POST)
	// public String processAddNewProductForm(@ModelAttribute("bookBean") BookBean
	// bb) {
	// productService.addProduct(bb);
	// return "redirect:/products";
	// }
	//
	// @ModelAttribute("companyList")
	// public Map<Integer, String> getCompanyList() {
	// Map<Integer, String> companyMap = new HashMap<>();
	// List<CompanyBean> list = productService.getCompanyList();
	// for (CompanyBean cb : list) {
	// companyMap.put(cb.getId(), cb.getName());
	// }
	// return companyMap;
	// }
	//
	// @ModelAttribute("categoryList")
	// public List<String> getCategoryList() {
	// return productService.getAllCategories();
	// }

	// <___________________________________________________________________________________________>

	// 檔案上傳
	// @RequestMapping(value = "/products/add", method = RequestMethod.POST)
	// public String processAddNewProductForm(@ModelAttribute("bookBean") BookBean
	// bb,
	// BindingResult result, HttpServletRequest request) { /// 三個地方要完全一樣: bookBean
	// String[] suppressedFields = result.getSuppressedFields();
	// if (suppressedFields.length > 0) {
	// throw new RuntimeException("嘗試傳入不允許的欄位: "
	// + StringUtils.arrayToCommaDelimitedString(suppressedFields));
	// }
	// MultipartFile productImage = bb.getProductImage();
	// String originalFilename = productImage.getOriginalFilename();
	// bb.setFileName(originalFilename);
	//
	// String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
	// String rootDirectory =
	// request.getSession().getServletContext().getRealPath("/");
	// // 建立Blob物件，交由 Hibernate 寫入資料庫
	// if (productImage != null && !productImage.isEmpty() ) {
	// try {
	// byte[] b = productImage.getBytes();
	// Blob blob = new SerialBlob(b);
	// bb.setCoverImage(blob);
	// } catch(Exception e) {
	// e.printStackTrace();
	// throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
	// }
	// }
	// productService.addProduct(bb);
	// // 將上傳的檔案移到指定的資料夾
	// try {
	// File imageFolder = new File(rootDirectory, "images");
	// if (!imageFolder.exists()) imageFolder.mkdirs();
	// File file = new File(imageFolder, bb.getBookId() + ext);
	// productImage.transferTo(file);
	// } catch(Exception e) {
	// e.printStackTrace();
	// throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
	// }
	// return "redirect:/products";
	// }

	// @InitBinder
	// public void whiteListing(WebDataBinder binder) {
	// binder.setAllowedFields(
	// "author",
	// "bookNo",
	// "category",
	// "price",
	// "title",
	// "companyId"
	// , "productImage"
	// );
	// }

	// <___________________________________________________________________________________________>

}
