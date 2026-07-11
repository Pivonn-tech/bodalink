import logger from "../utils/logger.js";

export function errorHandler(err, req, res, next) {
  logger.error(err);

  res.status(err.status || 500).json({
    success: false,
    error: {
      code: err.code || "INTERNAL_SERVER_ERROR",
      message:
        process.env.NODE_ENV === "production"
          ? "An unexpected error occurred."
          : err.message,
    },
  });
}