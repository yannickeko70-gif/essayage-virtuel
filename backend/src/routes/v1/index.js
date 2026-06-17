const express = require("express");

const router = express.Router();

router.get("/", (req, res) => {
  res.json({
    success: true,
    message: "API TryOn v1 opérationnelle",
  });
});

module.exports = router;