Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574B6307AF4
	for <keys@linux.kernel.org>; Thu, 28 May 2026 03:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779937482; cv=none; b=unRbmDuMFUcHaALh084RbqSO3BTTLxBGBeekuHUAdaIEPd/5dTBhk90pCVqFY+L4nMEYp/TihezWFc7qwY1prBvreMcnxWb12bPcgZ7rdd1j8iqw1IXx7PmJeOtyJcKD5+bdkFxIwJeUUA4lpagRgsQH2Q8flEVrYSi/KvjZYRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779937482; c=relaxed/simple;
	bh=vE0XKn4wlipwUb8hU5WY7TRe2Ii5Cc9ksS4BKpRAeFE=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=keBVtjqtv5A1zuHrfZ9zlLQOWPDC1yWjZHD+Tma27cpQ02eiUNjsb1H84ju3N7Zl/VkGw35wnzudRfgHlWR/2q8D1j4JAvs5Whr9C6fXWjqRkRWJwFDFh8XMua46iAnMistmH7sMDYndNtxX951ZqWadN5LKskSGswjNTsKpZWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=MW9+pYmU; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="MW9+pYmU"
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 64S34axcE3025074, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1779937476; bh=zeRoMn9I+rLXvRONhXa3l8NPKdHS13JTpnQ5djEnLGo=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version;
	b=MW9+pYmUtYNc2uu0U2epmSnjxyQHHsPiqHu62nrjUxk9nF8xxPo5EQHZlOaWFQJiq
	 XOokSOID6iYa5KIVggm/fIME+JZdOa5M+VKXxhm6+Y90JzLHe6+qVXik9630gHACbe
	 Yk6j9j/5z8FCe7qSpxbBRwq/ELK4ksFlyU/oRpI1RJcAM/5/SnYkciungzAmuMsQHP
	 o3ONpKkktz+TAZVr7wB1WSL2ybt9P5vRADn4WLlLBwYVLCJN2A56ytZxz763l0uj2g
	 o+xwreDAnHmYoLtRPOQHu+6Xq0nIednbsSsnJfPw5wFK3Ridm+qAE8cFhPZOnYIwS/
	 EWYt9W38JackA==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.28/5.94) with ESMTPS id 64S34axcE3025074
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <keys@linux.kernel.org>; Thu, 28 May 2026 11:04:36 +0800
Received: from RTKEXHMBS01.realtek.com.tw (172.21.6.40) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 May 2026 11:04:36 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS01.realtek.com.tw (172.21.6.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 May 2026 11:04:33 +0800
Received: from RTKEXHMBS06.realtek.com.tw ([::1]) by
 RTKEXHMBS06.realtek.com.tw ([fe80::e6fd:5a3f:8946:92c4%10]) with mapi id
 15.02.2562.017; Thu, 28 May 2026 11:04:33 +0800
From: =?big5?B?WXUtQ2h1biBMaW4gW6pMr6enZ10=?= <eleanor.lin@realtek.com>
To: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: PGP key submission for kernel.org
Thread-Topic: PGP key submission for kernel.org
Thread-Index: AdzuTT9SMabg6MGgQJuzRg+ueCLHmg==
Date: Thu, 28 May 2026 03:04:33 +0000
Message-ID: <e62f15abda5c4aa08794c565ff8b5dc8@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: yes
Content-Type: multipart/mixed;
	boundary="_002_e62f15abda5c4aa08794c565ff8b5dc8realtekcom_"
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0

--_002_e62f15abda5c4aa08794c565ff8b5dc8realtekcom_
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64

SGksDQoNCkkgYW0gWXUtQ2h1biBMaW4sIGxpc3RlZCBhcyBhIEFSTS9SRUFMVEVLIEFSQ0hJVEVD
VFVSRSBtYWludGFpbmVyLg0KDQpQbGVhc2UgZmluZCBhdHRhY2hlZCBteSBwdWJsaWMga2V5LCBz
aWduZWQgYnkgR3JlZW50aW1lIGFuZCBLdWFuLUt1YW5nLg0KDQpCZXN0IHJlZ2FyZHMsDQpZdS1D
aHVuDQo=

--_002_e62f15abda5c4aa08794c565ff8b5dc8realtekcom_
Content-Type: application/octet-stream; name="export.asc"
Content-Description: export.asc
Content-Disposition: attachment; filename="export.asc"; size=3195;
	creation-date="Thu, 28 May 2026 02:30:03 GMT";
	modification-date="Thu, 28 May 2026 02:30:03 GMT"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkdvQlJiMEJFQUNlTURS
SGt6S0hUdS81cHd5T0NPTHFHaktTZm4wYWh6RVdWSnJiU1VRQlVUVUhDaXdCCkZ3akdFUE5UODZa
YkZmNGtWQlNOOVdXeWVmQzRkakQvT3RzdHRxMFJ1dHZCYTMraUE1QjhWd2YxUFduWUVxaWcKNHBL
dmxueWxUOHdqZjVFa2FjdzJBa3Y2NVlaaGhVZ05MYXdjRnkrOXhkUXN1VFlQVTN6YWYwS0xYZ1Bs
U0lLawpzbnlsbUtkTGY1ajZGaHo3aVJ2ZVRwZm5YTFNaWk1ZWERIUUIyam9semxuaFBJNnJNaHdk
NG5WeEN1S21lQTNmCnFZYmJXOTk1NlVqZFZKaW1uWjc3SWlqU0Q1RmNBV05tM1ErSlJ1RW5lbU5O
eVkyQTYrUk9ib1JveU9xdlp6NnMKQTlBRDlaWGhXK2ZEZnRaZHIreDkweVlaajlXREFNbkVmRUVx
T2VLbWo5N0JnUXRpYm80VEJSdW1KMHNJNHR1MAowNk1CeEVYR3lBdkMyT0RBRW5aK3BRL2t6OXMz
NTRJMWJWa3BrTGFHaytBVFVXOFhQN0w1M2F1azB1S0lmL043CnFKaFI0dEcwc28xbGpPQzNLak1u
RGtGRFdLWXRid0IzUU9lRWxlVk5UN2QrN25kcmlyY0JSbk1vOEdQVysyczgKalZHbkNmZkhZaHdI
enF2dXdOSUFESW9Gemp0WEJodGdjanFJNVI3MC9KY0dkUUcyU1QyOWh6UzFsQkFkc3lQVQpNRnEr
MVNaU1dwa3JUMmNhNWtjblZQOUxFQmRTRGtEOTdoUGhRWFRieC9pbWw0SElhdHU4RVZZSjcyMDBp
dkhFCjdodTRQejNZWklFRmdZbnFWVUhoSXlnb28yQ2M5SWh6VmZLSDZ5b2JNWGpaQUx3NDdLTGh6
aHFuRFFBUkFRQUIKdENWWmRTMURhSFZ1SUV4cGJpQThaV3hsWVc1dmNpNXNhVzVBY21WaGJIUmxh
eTVqYjIwK2lRSlhCQk1CQ2dCQgpGaUVFcE1SODltWUV1S2hib0JxZ2VKZHM1NGpxa2pNRkFtb0JS
YjBDR3dNRkNRV2ptb0FGQ3drSUJ3SUNJZ0lHCkZRb0pDQXNDQkJZQ0F3RUNIZ2NDRjRBQUNna1Fl
SmRzNTRqcWtqTW9meEFBa2hpU1U3bEF2SEdOTVBCVmt3WDEKNnh6RDIydm1ZNHhsWUc3VVhCUGZq
WE50Z2FhelhkeXAvUGFBNUtzWkF0ckxLejAvNzFrTDl1aDdlY2JzWEhSaApIRzE5bXhRN1RueXFy
NlBlb1VYZW1UNHIycWZxNTMxbUNicSthdHlscm92NWtHNzlKS0lxcGtQaWhtdktua0M5Cm45UVZB
c2FXbGJmRWV0blBoclpDTllVMDlIbmo2TkludTJTTS96WjdWMEpzQ20rSi94WXYxWlJGTXMrZnp1
b1MKVXhUYXFYc3JGcDcwaW9uZnNSZVpyeDRSL3A0VDR2d1FaSDZwT29IakI3VWxNcTNTZnRhSWti
bktxdFlURlhqdwpmRWtaSVlUVlphZlN4d3gwWThHM3dxMTM3dXZCbFh3bG5BSjNlSWx5Q2JFWXJB
OFRYVXN5OVk1MzV3Q25xUXdhCm1iTDV4V1BwNlhzQlh3REw0WDdTc2x5UUxKalo4OHI5K0MzNSty
REdUQ21ETVFUOHpvYTF3bHg2S2dVS3NHLzgKVWRQdDdpWUc4WmwvWFNHVnZ2S0U3T2w0NVJwWkNM
dkEzZGhXNTU4amZ6TS8wZWRpOWw1QlhSQ0JPVHduVllCOQp1ZVhEQ2dUZnU0eElnSGxWRnRjWUs3
NDIwWFdLS2U2VVFLUys0bVZmL0kxVVo1Yk9PTWVsNUFPUFlDeWVKTjRaCnFHbHpYUHU5cGV2alVw
eE01bWRLT2hBaldrMzA0amF5NUZtcXo4Q05sOVV0MFFMU2p3U0duSXJzeVgyeG5WVDMKZ2lFd3FO
ZXZ6OTB2ZTMxb3BFT056MjJnRlVUVVlzWkZjQ01LS1NiZEcrdVF2TmUrNTduTlJ5MEp2Z2x0cTE1
QwpBU2JIZks3ajJkQ0xNWlNWSHFHZGhQU0pBak1FRUFFS0FCMFdJUVNjOGpoWmQrYmQzMDJLRU1B
TEUwRVoyVWVYCjlRVUNhZ0Z4SFFBS0NSQUxFMEVaMlVlWDlVR0tELzBlaW5XSit0aDV5VUd3Y1U1
RjBRQmYrUFkvUlJUM2tqLzcKa0ZZVE0zODhabEZ6cFM0OE5zbmFTR01nMENvSlppdmZhcTZaSjR0
eVprWnNYVjFIamNuclc1aUE0QU5SRGVYZgplQm9qZU8yNW1Rdk1SQmJNd2kxNmZjRXgwaWFqRnhK
VW5xZ3BYZ0lwSmRhQSswZHF0bU5nWC9VY1pVWmh0UHNKCjJsd0FnUk0xTklPeVRJWTFqTGJWaTJH
V1F6UnVVZmhDRm1HZ2dvTFR3YmUwL3NaOGx5SU94TEd0cm9yVkgxWmwKa1VRaVQyRCs0VkV3MWU5
UUhiY0pSaUV0Y3VkQ3JIZlpoTFQrZ0pnSmpJUDNxNkVzTEpjcUxMc2xpcUtxTDFrVApMbHRVR1FV
TkJuUk9BczM3VEhIMmFWU2tvcWlGdkZlR05KZnQ2TkorTnB5U013VG40U3ROWXZTV0gyaGRlOWNj
CmsrNFZPZXpWUjhrS0I1clpsOXlMaXNKL3UzenlSNmtMWm9lajFYdmU4ejFPNFY0MW92Y0pTZzR1
Q045UFRXdFkKUytjblV3eDl2bVNiUFRsemJkV25PQThLM1JtRUhEZnVaR2Q0aXUxaVF5blJMTEFX
RVFYYmo5dzU4azJ4K2djQwoxZjZNMndvUTQwRGRuWnJsS2pOelZNdm4wcGIxNVdGeXpzQUdZZHBs
TnozV2ZSVDRrTUVjQjdsRVl0Q3l5Ni9LCk96bS84a0hoekFFZkFrcEtUTWVQenJBTStLaXhhVEh2
YkFKdllPdXNmclBMTytFRTNkQnU2cGVtMXYyMlRTeXMKWWgwQWE2WC8vZFFYRVRMMldIVldXUGx6
azYyRkNoQzAxVktKcms1Q0NaOUFVRitnYU1jYS9CNEprUUlnbVBYTgpLWnE4UGRhOHRJa0NNd1FR
QVFvQUhSWWhCQUFzQ3lrZzVxdnZVUTcrVCtIS2M2UEpXVTRrQlFKcUR3bmVBQW9KCkVPSEtjNlBK
V1U0a0RaOFAvQXpiZS9vVC9JTS8zY3pMcEI5UUs1dzRGNkwwUldFWlp4MG0wY3JObExVVThzcVcK
QkZpUW5MenE5Yno1R2NMWnpzWWlHc1hScXRHcTRWL1ROOFY1MEJoaUtpdXZ2VUYrUDdabTN5OFV1
bkUrbmp5NgpEbVU4eGc5d3l0eW1KZlhGaU5MYjVvWllwSTJsc2FzYUZta0E3Q2JQYWVhWDBUVSs2
a1RBdnNoTnoxODVkSGpECmdsbldTQW9QeTJ5bVljTXJvZURBaTZaMmRqUDhVaVdSYlBUcyt1dUUv
ZlREeEI0WVJTS0xZbHdaa1JxamVNZlYKeHNoNlBsQi9hbDdtWUJOb1VNamZ1VEdhZERkNUJnWnhz
TVErOWRlWXl2QlRlL1lQdlM2UE4vU2pJSlFpeStrNAo5dzBmQU1IQnZpZmNraEh3UVpLd3UrWisx
a2FvcjZFNExTZGNMUUZzNnpwdDRkcEc1THE2N01qNndPanRxQ3ZUClVGbWVwUTFLbWlEaXFhNmpu
NEE4RWJmOW94OXlNbDlBUVd2SVVaUnR2L1RyQ0xDM3ZvNXYrZ2lhVFM1R2loNW8KS1Z3SVNobGFP
ZEwxemNyU3dXcVluamtHR2pOVitYRDUzd25YclBFSUZmL0YvaHlYWjZoOHdaUzRhbUY5cURydQo4
TVJ4bjd0YVpaY1Via0g1Z2pOS0dMang5ZGoxTjRzK0gvQ25qbWJsYU9kNHFXN200YmZPZzNtQ0JK
anZLZXd0CkovYk1QTVAzY2p2aHdiYzYrbEJsaUNQZDc2TTRNTjIzcmgxZVpoVDZIeXdLcFlmc0RQ
a3FIa2ZpSEtYeTNRM0UKOFB0SGJtL3pnQWdJQTI1RGh4cVhtUEw1M1c2WXJPU00wT2VxaHpoSmVt
NndYYlhFRkQ4RG9KYVBGayt0Cj1QUjl4Ci0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0t
LS0K

--_002_e62f15abda5c4aa08794c565ff8b5dc8realtekcom_--
