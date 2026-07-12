import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    module: "Bookings",
    status: "Coming soon",
  });
});

export default router;