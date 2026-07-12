import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    module: "Wallet",
    status: "Coming soon",
  });
});

export default router;