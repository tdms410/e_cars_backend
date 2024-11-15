const Product = require('../model/product')

exports.getAllProducts = async (req, res, next) => {

    try {
        const product = await Product.find()
        console.log(product, "rester");
        res.status(200).json(product)
    } catch (error) {
        console.log(error)
    }
}


exports.getProduct = async (req, res, next) => {

    const product = await Product.findById(req.params.id)
    try {
        console.log("rester2", product)
        if (!product) {
            return res.status(404).json({ status: 'fail', message: "No car found with that ID" })
        }
        res.status(200).json(product)

    } catch (error) {
        console.log("error rester2", error)
    }
}



exports.createProduct = async (req, res) => {
    try {
        await Product.create({
            ...req.body
        })
    } catch (err) {
        console.log(err)
    }
}