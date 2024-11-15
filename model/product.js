// Require Mongoose
const mongoose = require("mongoose");

// Define a schema
const Schema = mongoose.Schema;

const productSchema = new Schema({
  title: String,
  category: String,
  description: String,
  price: Number,
  color: String,
  image: String,
  discounted_price: String
});


const Product = new mongoose.model('products', productSchema)


module.exports = Product
