const express = require("express");
const app = express();
const PORT = process.env.PORT || 80;

app.get("/", (req, res) => {
    res.send(`
        <!DOCTYPE html>
        <html lang="th">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>เว็บ</title>
            <style>
                body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; }
                h1 { color: #2c3e50; }
            </style>
        </head>
        <body>
            <h1>ยินดีต้อนรับสู่เว็บ</h1>
        </body>
        </html>
    `);
});

app.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
