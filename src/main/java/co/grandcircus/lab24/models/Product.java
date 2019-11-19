package co.grandcircus.lab24.models;

public class Product {
	
	private String name;
	private int id;
	private String description;
	private double price;
	private int quantity;
	private String img;
	
	public Product() {
		
	}

	public Product(String name, int id, String description, double price, int quantity, String img) {
		super();
		this.name = name;
		this.id = id;
		this.description = description;
		this.price = price;
		this.quantity = quantity;
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
}
