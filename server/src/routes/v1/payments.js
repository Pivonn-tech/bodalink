import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    module: "Payments",
    status: "Coming soon",
  });
});

export default router;