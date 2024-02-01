<% @Language="VBScript" CODEPAGE="65001" %>
<%
Response.expires = -1
'Response.Buffer = true
'Response.addHeader "Access-Control-Allow-Origin", "*"
%>
<!--#include virtual = "/master/inc/inc_bollog.asp"-->
<!--#include virtual = "/master/inc/func_bollog.asp"-->
<script language="javascript" runat="server" src="/master/inc/json2.asp"></script>
<%


'############# 회원가입 완료 안내 알림톡 ########################
'	send_msg = "[볼록북]"& vbCrLf &_
'						"안녕하세요. 김래석님."& vbCrLf &_
'						""& vbCrLf &_
'						"볼록북 회원이 되신 것을 진심으로 환영합니다. ♥"& vbCrLf &_
'						""& vbCrLf &_
'						"SNS 글과 사진을 실시간 자동편집을 통하여 간편하게 자신만의 볼록북을 만들어 드립니다."& vbCrLf &_
'						"이제 소중한 사진과 글을 안전하게 간직하세요."& vbCrLf &_
'						""& vbCrLf &_
'						"▶볼록북 바로가기"& vbCrLf &_
'						"https://bollogbook.com/"& vbCrLf &_
'						""& vbCrLf &_
'						"▶고객센터 "& vbCrLf &_
'						"1644-5172 (평일 10시-18시, 점심시간 13시~14시)"
'	'ktalk_send_regist = send_biz_talk(member_phone, "16445172", send_msg, "BL013", "LMS", "회원가입 완료 안내", send_msg, "웹링크", "볼록북 바로가기", "https://bollogbook.com/", "https://bollogbook.com/")
'	res_str = send_biz_talk("01077580166", send_msg, "BL012")

'res_str = ktalk_order_end("볼록북", "01077580166", "김래석", "볼록페이스북", "1000", "202004101759126964_1631846317876")

'ktalk_order_cancel(ByVal brand, ByVal phone, ByVal name, ByVal goodname, ByVal price, ByVal orderid)
'res_str = ktalk_order_cancel("볼록북", "01077580166", "김래석", "볼록페이스북", "1000", "202004101759126964_1631846317876")

'ByVal phone, ByVal name, ByVal coupon_name, ByVal expire_date, ByVal coupon_url)
'res_str = ktalk_alert_coupon_expire("01077580166", "김래석", "[깜짝 이벤트] 볼록 포스터 A3 무료 제작권", "2023-05-15", "https://bollogbook.com/html/mypage/coupon.html")
'res_str = ktalk_alert_coupon_expire("01087831924", "황금석", "[깜짝 이벤트] 볼록 포스터 A3 무료 제작권", "2023-05-15", "https://bollogbook.com/html/mypage/coupon.html")
'res_str = ktalk_alert_coupon_expire("01051445359", "김유미", "[깜짝 이벤트] 볼록 포스터 A3 무료 제작권", "2023-05-15", "https://bollogbook.com/html/mypage/coupon.html")

'ktalk_order_deliver(ByVal brand, ByVal phone, ByVal name, ByVal goodname, ByVal orderid, ByVal trackername, ByVal trackid)
'res_str = ktalk_order_deliver2("볼록북", "01077580166", "김래석", "볼록페이스북", "202004101759126964_1631846317876", "우체국택배", "4456212315454")

'Function ktalk_order_vbank(ByVal brand, ByVal phone, ByVal name, ByVal goodname, ByVal price, ByVal accountname, ByVal bankname, ByVal bankaccount, ByVal vinputdate)
'res_str = ktalk_order_vbank("볼록북", "01077580166", "김래석", "볼록페이스북", "2000", "김래석", "하나은행", "456892367894", "2022-11-08")

'Function ktalk_order_vbank_alert(ByVal brand, ByVal phone, ByVal name, ByVal goodname, ByVal price, ByVal accountname, ByVal bankname, ByVal bankaccount, ByVal vinputdate)
'res_str = ktalk_order_vbank_alert("볼록북", "01077580166", "김래석", "볼록페이스북", "2000", "김래석", "하나은행", "456892367894", "2022-11-08")


'downinterval = 30
'
'send_msg = "[볼록북 E-Book 만들기]"& vbCrLf &_
'					""& vbCrLf &_
'					"고객님께서 신청하신 볼록북 E-Book이 도착했습니다."& vbCrLf &_
'					"아래 링크를 눌러 파일을 다운 받으실 수 있습니다."& vbCrLf &_
'					""& vbCrLf &_
'					"다운로드 : https://bollog.page.link/KKT3"& vbCrLf &_
'					""& vbCrLf &_
'					""& vbCrLf &_
'					"파일 다운 방법 : https://blog.naver.com/bollogbook/222949832176"& vbCrLf &_
'					""& vbCrLf &_
'					"*유의사항"& vbCrLf &_
'					""& vbCrLf &_
'					"- 무료 다운로드 기간 : 신청일부터 "& downinterval &"일 동안 가능합니다."& vbCrLf &_
'					"- 다운 기간이 지난 파일은 다시 다운 받으실 수 없습니다."& vbCrLf &_
'					"- 파일 형식은 PDF로만 제공됩니다."& vbCrLf &_
'					""& vbCrLf &_
'					"앞으로도 볼록북에 많은 관심 부탁드립니다."& vbCrLf &_
'					"감사합니다."
'
'res_str = send_biz_talk("01077580166", send_msg, "BL018")
'Response.write res_str

'send_msg = "[볼록북 E-Book 만들기]"& vbCrLf &_
'					""& vbCrLf &_
'					"고객님께서 신청하신 볼록북 E-Book이 도착했습니다."& vbCrLf &_
'					"아래 링크를 눌러 파일을 다운 받으실 수 있습니다."& vbCrLf &_
'					""& vbCrLf &_
'					"다운로드 : https://blog.naver.com/bollogbook/222820984128"& vbCrLf &_
'					""& vbCrLf &_
'					""& vbCrLf &_
'					"파일 다운 방법 : https://blog.naver.com/bollogbook/222820984128"& vbCrLf &_
'					""& vbCrLf &_
'					"*유의사항"& vbCrLf &_
'					""& vbCrLf &_
'					"- 무료 다운로드 기간 : 신청일부터 7일 동안 가능합니다."& vbCrLf &_
'					"- 다운 기간이 지난 파일은 다시 다운 받으실 수 없습니다."& vbCrLf &_
'					"- 파일 형식은 PDF로만 제공됩니다."& vbCrLf &_
'					""& vbCrLf &_
'					"앞으로도 볼록북에 많은 관심 부탁드립니다."& vbCrLf &_
'					"감사합니다."
'
''Call sendSms("", "엔클라우드 메시지테스트", "16445172", "010-7758-0166")
'
'Call sendMms("문자 제목", send_msg, "16445172", "010-7758-0166")
'
'Response.write "complete!"

'res_str = ktalk_alert_phone_auth("01077580166", "45641")

res_str = ktalk_order_deliver2("볼록북", "01077580166", "kayart", "bollog facebok", "202309061201145338_1698290846802", "롯데택배", "246133531346" )

Response.write res_str
%>