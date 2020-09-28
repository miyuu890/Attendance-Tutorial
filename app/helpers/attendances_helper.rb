module AttendancesHelper

  def attendance_state(attendance)
    # 受け取ったAttendanceオブジェクトが当日と一致するか評価します。
    if Date.current == attendance.worked_on
      return '出勤' if attendance.started_at.nil?
      return '退勤' if attendance.started_at.present? && attendance.finished_at.nil?
    end
    # どれにも当てはまらなかった場合はfalseを返します。
    false
  end
  
  def working_times(start, finish)
    format("%.2f" , (((finish - start) / 60) / 60.0))
  end  
  
  def working_times(attendance)
      unless attendance.tomorrow?
        format("%.2f",(((attendance.scheduled_end_time - attendance.started_at) /60) / 60.0))
      else
        format("%.2f",(((attendance.scheduled_end_time - attendance.started_at) /60) / 60.0) + 24)
      end
  end    
end

