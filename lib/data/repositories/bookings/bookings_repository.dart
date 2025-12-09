import '../../../core/entities/result/result.dart';
import '../../../domain/models/bookings/booking/booking.dart';

abstract class BookingsRepository {
  /// Добавить запись на занятие.
  Future<Result<void>> addBooking(Booking booking);

  /// Получить все записи пользователя.
  Future<Result<List<Booking>>> getBookings();

  /// Удалить запись на занятие.
  Future<Result<void>> deleteBooking(Booking booking);
}

