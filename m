Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D07D301460
	for <keys@linux.kernel.org>; Tue,  3 Mar 2026 09:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772530933; cv=none; b=iiO4/RtYfCYssWLJrRICVKXXJUqN7CKqEmOw2AD5adjtAF6kwfIr7AumF+Y5oyge7FA3rTA8YzAG+dvH7Q1S8OFdWyjnyzBuII9iJ+0WxwKV4Mto6q5FXfosJ56d12rnnfWtAKPGFuQzb7e4kUsFwsfuPK84hRntIARbAyzw85A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772530933; c=relaxed/simple;
	bh=poD544lP1DP9HicgjboPSxtiN2x2bllEJfKLD06qilA=;
	h=Content-Type:Message-ID:Date:MIME-Version:To:Cc:From:Subject; b=gtj8g72pUYH7Gz32F/QapRNHalU2HoxY1CaXWlFRL3+BfhQBIYDah5FhzGw7y/+RnkXEjuFSk/p4KvJ1otS7aMqN06jEpJS51v/adSY747RFXmkHiU3RCAb0hAJgP0BGn29yHmudUJbCFklypPnFp9SFYR0n3OHrxacbminqBsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=mFaqeCHy; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="mFaqeCHy"
Content-Type: multipart/mixed; boundary="------------MUcGukItx8FVk0Q11om6A8H0"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1772530929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=poD544lP1DP9HicgjboPSxtiN2x2bllEJfKLD06qilA=;
	b=mFaqeCHyFmwWBaBwb4zDjljE7xgyjlgR4uQbsxqEIqZdG71aHLhFvYUmSW/eilv93P8+sX
	b37uyzpcKJmRSyh/Jxg+4HF4vuD6+QzRgJ99N8IjfJXB1NjDfw8VxhxF2qRSSxUDG7abBp
	88zwCpezPqwj63CJuIg9YY43S/Fel40=
Message-ID: <c08e120f-d3e2-4ea7-aef1-6ac0f71349f6@linux.dev>
Date: Tue, 3 Mar 2026 17:41:57 +0800
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
To: keys@linux.kernel.org
Cc: unicorn_wang@outlook.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Chen Wang <chen.wang@linux.dev>
Subject: Key for Chen Wang
X-Migadu-Flow: FLOW_OUT

This is a multi-part message in MIME format.
--------------MUcGukItx8FVk0Q11om6A8H0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm sending my PGP key for Linux dev/PR work. Please see attachment.

Thanks

Chen

--------------MUcGukItx8FVk0Q11om6A8H0
Content-Type: text/plain; charset=UTF-8; name="export.asc"
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FYVIxZXNCWUpLd1lC
QkFIYVJ3OEJBUWRBaDhXS29OWkJFK0lMZnZ6OUdCeWFRd0xRV20rM1NIOWRoaWNRClFneGZN
ZnUwTDBOb1pXNGdWMkZ1WnlBb1RHbHVkWGdnVUZJcElEeDFibWxqYjNKdVgzZGhibWRBYjNW
MGJHOXYKYXk1amIyMCtpSk1FRXhZS0FEc1dJUVRZUGNXSjZCeTNhRnU4SXVLSEc5NVF1Yzk3
ZGdVQ2FSMWVzQUliQXdVTApDUWdIQWdJaUFnWVZDZ2tJQ3dJRUZnSURBUUllQndJWGdBQUtD
UkNIRzk1UXVjOTdkak40QVA5MEx4VDFPR084Cm9tdjFHK2NBdkxHQnJtRWR2TC9UQjFlNmIw
TlUvYm9RT0FFQXZXVlNYa2RBQ05NN3R3TjVDTHRONGE4U0NpelkKS1BvMmp2R0VDNis2UVE2
SkFqTUVFQUVJQUIwV0lRUkY5WTVReWtxZGE3WGJxcnQrZjVIZ01qeHByd1VDYVl0YwpZZ0FL
Q1JCK2Y1SGdNanhwcjlJMEQvOXFjKzh2eTVpRlZSWHgycXFITjcyVFA4VGpZU3RZK1F3azBC
cjUvcHkwCkN6aTM1cGl1WE9Xb0NOckxiRWZCanliTGZscFVJczFtbS8zT3N2T3VPYWN4T0J3
eHdrSDBsK0Q0ZG54QVVpSEgKakN6ektaM1NUVGpHYWdnVm91L0o4Z3lJc0IyKzRmaHpLZHpJ
TlVFeWhoZ21PamVPZmRNc3VHaHQ0eks2Z001YQp2QVdndEVRSTZIRHFRcWNuejJacHlPQUwx
QWVOUjdCVUM4VUVmZVhVb3Nud0ZMUE5HTWVwSWR5RjNWNlJ2czBKCnlNaUNxTUJsd2kzUmNv
aFE4clE3ZXRXRk9VTUJBdmw3bkRqcWhyQWVEV2ZqbEhJY1kzVTBQR1pNZC9FR0FnT3UKSlFw
SmVsSW1hZWhIMUlNam5JdjdTY3l6dVlRcElwMEFOUUJLWGYyTElFSHFWWmRNcnZTS3JPN3RT
ODQyL0Y3dgpRZXJFemJzQTh0QlorU1VBZXBWTm5vcTZCWC8yT2RGTEFjV05DUHBta1h0WWdu
eVY5WEhXSjdld0FvZ0ptb0pUClVIR2VXNGcxbTdBbGZsWDEzZitEcjVKTCt3TER4Q0lHL2xS
WFlXWFB3ekpwRDAzOWduRXJNa3NzS1hIWS9LL2UKSFJKb1diODVsUFVRanlzT3ZZcHh5OTg5
cUJ1ZXRqeTFKNlp5WVVpQ2tKa0I2TmJvVmg4enFNMGRHRlZSVTdrdQoxSlRaYUMxdVpScHky
cE1xZ21DZE5nd2xuTUVSekRSY0xEeEpWYmZLcjZYNDVJK1R5ZTBGWWFWV3JSbDJYOTVLCm92
WU0rSEw2cHVXSG5ueU0ycmNraXNKVDR5aWs1YkFnZU5DemRFOFJtYk9lUlBPYnJOcHJ2aFE1
a0M4NGhIK1EKc2JRNlEyaGxiaUJYWVc1bklDaE1hVzUxZUNCRVpYWmxiRzl3YldWdWRDQmhi
bVFnVUZJcElEeGphR1Z1TG5kaApibWRBYkdsdWRYZ3VaR1YyUG9pVEJCTVdDZ0E3RmlFRTJE
M0ZpZWdjdDJoYnZDTGloeHZlVUxuUGUzWUZBbW1tCm81a0NHd01GQ3drSUJ3SUNJZ0lHRlFv
SkNBc0NCQllDQXdFQ0hnY0NGNEFBQ2drUWh4dmVVTG5QZTNic0R3RC8KVEZnMklOaFBHQXlE
SVF6SXl0eFNBK21kdHIxUXlpQXRlL3hLeGdGbnJJWUJBS29oM0dOVU93bzhDVjBacVhSVgph
MGFEMDVramJCOEpLdkY4N000V1ZBNEV1RGdFYVIxZXNCSUtLd1lCQkFHWFZRRUZBUUVIUUlu
NnlwbW5jQzRxCmJSYlJqRHpBM2U2ZVBqTUwwUEVoTjZFWC8xZ2luRVlMQXdFSUI0aDRCQmdX
Q2dBZ0ZpRUUyRDNGaWVnY3QyaGIKdkNMaWh4dmVVTG5QZTNZRkFta2RYckFDR3d3QUNna1Fo
eHZlVUxuUGUzYWZtZ0VBMTJIS0Z2M0tlT21oMmE3SApJOGFWMXBoWnVwbGZQeHpwSkR5WW1M
QXUrcWtBLzNUZEozZjRBekZDcnEwWjR6Y1RSd3NNSWpPYyt0Y3RjTXhLCjJiMXNJY2tCCj13
TVZZCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

--------------MUcGukItx8FVk0Q11om6A8H0--
