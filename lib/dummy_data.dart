import 'package:e_commerce_application/features/shop/models/brand_model.dart';
import 'package:e_commerce_application/features/shop/models/category_model.dart';
import 'package:e_commerce_application/features/shop/models/product_attribute_model.dart';
import 'package:e_commerce_application/features/shop/models/product_model.dart';
import 'package:e_commerce_application/features/shop/models/product_variation_model.dart';
import 'package:e_commerce_application/routes/routes.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';

import 'features/shop/models/banner_model.dart';

class TDummyData {

  /// -- List of all Products
  static final List<ProductModel> products = [
    ProductModel(
        id: "001",
        title: "Green Nike Sports Shoe",
        stock: 15,
        price: 135,
        isFeatured: true,
        thumbnail: TImages.productImage1,
        description: "Green Nike Sports Shoe",
        brand: BrandModel(id: "1", image: TImages.nikeIcon, name: "Nike", productsCount: 265, isFeatured: true),
        images: [TImages.productImage24, TImages.productImage20, TImages.productImage23],
        salePrice: 30,
        sku: "ABR4568",
        categoryId: "1",
        productAttributes: [
          ProductAttributeModel(name: "Colour", values: ["Green", "Red", "Black"]),
          ProductAttributeModel(name: "Size", values: ["EU 30", "EU 32", "EU 34"]),
        ],
        productVariations: [
          ProductVariationModel(
              id: "1",
              stock: 34,
              price: 134,
              salePrice: 122.6,
              image: TImages.productImage24,
              description: "This is a product description for Green Nike sports shoe",
              attributeValues: {"Colour": "Green", "Size": "EU 30"}),
          ProductVariationModel(
              id: "2",
              stock: 20,
              price: 134,
              image: TImages.productImage20,
              description: "This is a product description for Red Nike sports shoe",
              attributeValues: {"Colour": "Red", "Size": "EU 32"}),
          ProductVariationModel(
              id: "3",
              stock: 40,
              price: 134,
              image: TImages.productImage23,
              description: "This is a product description for Black Nike sports shoe",
              attributeValues: {"Colour": "Red", "Size": "EU 34"}),
        ],
        productType: "ProductType.variable",
    ),
  ];

  /// -- Banners
  static final List<BannerModel> banners = [
    BannerModel(imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
    BannerModel(imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
    BannerModel(imageUrl: TImages.banner3, targetScreen: TRoutes.favourites, active: true),
    BannerModel(imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
    BannerModel(imageUrl: TImages.banner5, targetScreen: TRoutes.settings, active: true),
    BannerModel(imageUrl: TImages.banner6, targetScreen: TRoutes.userAddress, active: true),
    BannerModel(imageUrl: TImages.banner7, targetScreen: TRoutes.checkout, active: false),
  ];

  /// -- List of all Categories
  static final List<CategoryModel> categories = [
    CategoryModel(id: "1", name: "Sports", image: TImages.sportIcon, isFeatured: true),
    CategoryModel(id: "5", name: "Furniture", image: TImages.furnitureIcon, isFeatured: true),
    CategoryModel(id: "3", name: "Clothes", image: TImages.clothIcon, isFeatured: true),
    CategoryModel(id: "4", name: "Animals", image: TImages.animalIcon, isFeatured: true),
    CategoryModel(id: "6", name: "Shoes", image: TImages.shoeIcon, isFeatured: true),
    CategoryModel(id: "7", name: "Cosmetics", image: TImages.cosmeticsIcon, isFeatured: true),
    CategoryModel(id: "14", name: "Jewelry", image: TImages.jewelryIcon, isFeatured: true),
    CategoryModel(id: "2", name: "Electronics", image: TImages.electronicsIcon, isFeatured: true),

    /// Subcategories
    CategoryModel(id: "8", name: "Sport Shoes", image: TImages.sportIcon, parentId: "1", isFeatured: false),
    CategoryModel(id: "9", name: "Track Suits", image: TImages.sportIcon, parentId: "1", isFeatured: false),
    CategoryModel(id: "10", name: "Sports Equipment", image: TImages.sportIcon, parentId: "1", isFeatured: false),

    /// Furniture
    CategoryModel(id: "11", name: "Bedroom Furniture", image: TImages.furnitureIcon, parentId: "5", isFeatured: false),
    CategoryModel(id: "12", name: "Kitchen Furniture", image: TImages.furnitureIcon, parentId: "5", isFeatured: false),
    CategoryModel(id: "13", name: "Office Furniture", image: TImages.furnitureIcon, parentId: "5", isFeatured: false),

    /// Electronics
    CategoryModel(id: "14", name: "Laptop", image: TImages.electronicsIcon, parentId: "2", isFeatured: false),
    CategoryModel(id: "15", name: "Mobile", image: TImages.electronicsIcon, parentId: "2", isFeatured: false),

    CategoryModel(id: "16", name: "Shirts", image: TImages.clothIcon, parentId: "3", isFeatured: false),
  ];
}