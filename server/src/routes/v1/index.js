import { Router } from "express";

import authRoutes from "./auth.js";
import riderRoutes from "./riders.js";
import passengerRoutes from "./passengers.js";
import bookingRoutes from "./bookings.js";
import walletRoutes from "./wallet.js";
import paymentRoutes from "./payments.js";
import adminRoutes from "./admin.js";

import { API } from "../../constants/api.js";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    success: true,
    name: API.NAME,
    version: API.VERSION,
    message: "Welcome to the BODALINK API.",
  });
});

router.use("/auth", authRoutes);
router.use("/riders", riderRoutes);
router.use("/passengers", passengerRoutes);
router.use("/bookings", bookingRoutes);
router.use("/wallet", walletRoutes);
router.use("/payments", paymentRoutes);
router.use("/admin", adminRoutes);

export default router;