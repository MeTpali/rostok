import '../../../core/entities/result/result.dart';
import '../../../domain/models/bookings/booking/booking.dart';
import 'bookings_repository.dart';

class BookingsTestRepository implements BookingsRepository {
  final List<Booking> _bookings = [
    // Тестовые записи
    Booking(
      dateTime: _getNextWeekday(1, 10, 0), // Понедельник, 10:00
      masterFirstName: 'Александра',
      masterLastName: 'Кузнецова',
      topic: 'Английский язык',
      duration: 60,
      conferenceLink: 'https://meet.google.com/abc-defg-hij',
    ),
    Booking(
      dateTime: _getNextWeekday(2, 14, 30), // Вторник, 14:30
      masterFirstName: 'Алексей',
      masterLastName: 'Иванов',
      topic: 'Математика',
      duration: 60,
      conferenceLink: 'https://jitsi.example.com/room123',
    ),
    Booking(
      dateTime: _getNextWeekday(3, 16, 0), // Среда, 16:00
      masterFirstName: 'Мария',
      masterLastName: 'Петрова',
      topic: 'IELTS',
      duration: 45,
      conferenceLink: 'https://zoom.us/j/1234567890',
    ),
    Booking(
      dateTime: _getNextWeekday(4, 11, 0), // Четверг, 11:00
      masterFirstName: 'Дмитрий',
      masterLastName: 'Сергеев',
      topic: 'Олимпиадная математика',
      duration: 90,
      conferenceLink: 'https://meet.google.com/xyz-uvwx-rst',
    ),
    Booking(
      dateTime: _getNextWeekday(5, 15, 0), // Пятница, 15:00
      masterFirstName: 'Екатерина',
      masterLastName: 'Власова',
      topic: 'Русский язык',
      duration: 60,
      conferenceLink: 'https://jitsi.example.com/room456',
    ),
  ];

  /// Получить следующую дату с указанным днем недели и временем
  /// weekday: 1 = понедельник, 7 = воскресенье
  static DateTime _getNextWeekday(int weekday, int hour, int minute) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final currentWeekday = today.weekday;

    // Вычисляем количество дней до нужного дня недели
    int daysToAdd = weekday - currentWeekday;
    if (daysToAdd <= 0) {
      daysToAdd += 7; // Если день уже прошел на этой неделе, берем следующий
    }

    return today
        .add(Duration(days: daysToAdd))
        .copyWith(hour: hour, minute: minute);
  }

  @override
  Future<Result<void>> addBooking(Booking booking) async {
    _bookings.add(booking);
    return const Result.success(null);
  }

  @override
  Future<Result<List<Booking>>> getBookings() async {
    return Result.success(List<Booking>.from(_bookings));
  }

  @override
  Future<Result<void>> deleteBooking(Booking booking) async {
    final index = _bookings.indexWhere(
      (b) =>
          b.dateTime == booking.dateTime &&
          b.masterFirstName == booking.masterFirstName &&
          b.masterLastName == booking.masterLastName &&
          b.topic == booking.topic &&
          b.duration == booking.duration &&
          b.conferenceLink == booking.conferenceLink,
    );

    if (index == -1) {
      return const Result.error('Запись не найдена');
    }

    _bookings.removeAt(index);
    return const Result.success(null);
  }
}
