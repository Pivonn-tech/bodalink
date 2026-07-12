import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    module: "Riders",
    status: "Coming soon",
  });
});

export default router;