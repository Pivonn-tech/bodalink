import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.status(200).json({
    success: true,
    application: "BODALINK API",
    version: "0.1.0",
    status: "running",
    timestamp: new Date().toISOString(),
  });
});

export default router;