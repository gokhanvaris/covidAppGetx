import 'package:dio/dio.dart';

const baseUrl = 'https://api.collectapi.com';
const apiKey = 'apikey 1THa3RQJbklr7lJnOyymaw:6Y2FLpw5GM2wTdSIDljHI8';
const getContent = 'application/json';

BaseOptions dioOptions = BaseOptions(
  baseUrl: baseUrl,
  headers: {
    'Authorization': apiKey,
    'Content-Type': getContent,
  },
);
