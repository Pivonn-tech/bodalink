import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    module: "Passengers",
    status: "Coming soon",
  });
});

export default router;