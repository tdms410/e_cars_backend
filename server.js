require("dotenv").config();

const express = require("express");
const cors = require('cors'); // Importer CORS//
const app = express();
const PORT = process.env.PORT ;
const mongoose = require('mongoose')
const database = require("./database");

const productsControllers = require('./controllers/productControllers')

app.use(cors());
app.use(express.json()); 

// app.get("/api/products", (req, res) => {
    

//     database.query("SELECT * FROM products", (error, results) => {
//         if (error) {
//             return res.status(500).json({ error: "An error occurred" });
//         }

//         res.json(results);
//     });
// });

app.get("/api/products", productsControllers.getAllProducts);
app.get("/api/products/:id", productsControllers.getProduct);
app.post('/api/v1/products', productsControllers.createProduct)

// app.get("/api/products/:id", (req, res) => {

//     const productId = req.params.id;

//     database.query(
//         "SELECT * FROM products WHERE uri = ? LIMIT 1",
//         [productId],
//         (error, results) => {
//             if (error) {
//                 return res.status(500).json({ error: "An error occurred" });
//             }

//             res.json(results);
//         }
//     );
// });

// Returns 3 products from that category

app.get("/api/products/related/:id", (req, res) => {
    const category = req.params.id;

    database.query(
        "SELECT * FROM products WHERE category = ? LIMIT 4;",
        [category],
        (error, results) => {
            if (error) {
                return res.status(500).json({ error: "An error occurred" });
            }

            res.json(results);
        }
    );
});


const db = process.env.NODE_ENV === 'production' ? process.env.DATABASE_URL_DEV : process.env.DATABASE_URL_PROD
mongoose.connect(db).then((res) => {
    console.log('Database connected')
}).catch((err) => {
    console.log('Database connection error', err)
})


app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
