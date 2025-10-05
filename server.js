require("dotenv").config();
const express = require("express");
const cors = require("cors");
const infectadosRoutes = require("./src/routes/infectadosRoutes");
const principalRoutes = require("./src/routes/principalRoutes");
const secundarioRoutes = require("./src/routes/secundarioRoutes");

const app = express();
app.use(cors());
app.use(express.json());
app.use(express.static('uploads'));

app.get("/", (req, res) => {
    res.send("🚀 API The Last of Us - Andrei Lucca");
});

app.use("/api", infectadosRoutes);
app.use("/api", principalRoutes);
app.use("/api", secundarioRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
