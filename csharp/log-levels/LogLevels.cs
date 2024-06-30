using System;

static class LogLine
{
  public static string Message(string logLine)
  {
		int colonIndex = logLine.IndexOf(":");
		string message = logLine.Substring(colonIndex + 1);
		return message.Trim();
  }

  public static string LogLevel(string logLine)
  {
		int colonIndex = logLine.IndexOf(":");
		string message = logLine.Substring(1, colonIndex - 2);
		return message.ToLower();
  }

  public static string Reformat(string logLine)
  {
		string message = Message(logLine);
		string logLevel = LogLevel(logLine);
		return $"{message} ({logLevel})";
  }
}
