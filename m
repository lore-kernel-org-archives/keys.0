Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9DC33688A
	for <keys@linux.kernel.org>; Wed,  4 Mar 2026 00:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772584483; cv=none; b=VYVoXF4l1yuYEtmoV+bcRTpwaS+gfiCRqrZIiUO0bhiKO+BR6GgVi7GDgW31OHWEtKmsi6z0w56dNPGd29U8LIk9TKJEiepmU+pXjjRKr4asHTdXlbjcsGCdpV0Db2W2/m25AjDEF9bPngpx25YOyBLKZEgrelGzDtlf44kK/tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772584483; c=relaxed/simple;
	bh=X4j5HLYUcQHIvS0RYiJ5kpIHkGROkjD3qe5YvMUtDT8=;
	h=Content-Type:Message-ID:Date:MIME-Version:To:From:Subject; b=b6/3D2y2hqm6nVSVbDRnIL6jbh7ycEnnVOiOdL3m+bChYxiOjZJ1sH9p+K73vWD+/ZV1pjQAVOifaxKCx/L7XroMHkUMFS3eDECZmsBApSUDLfYJvXtNbDTrmgff1QQVzq1XA4omtUUEMnNL0fMu5OHd8IL29RoTqKLLq9WIZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=P5UB19mL; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="P5UB19mL"
Content-Type: multipart/mixed; boundary="------------OaxpTGTGQqnMmLGxccGYvY02"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1772584480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=9JFP3jEWYYboJ6my+rq88KYhrcryQnMa3SE9n5k2lrA=;
	b=P5UB19mLr9GPtiNDrK3dHUW5HS6wYaGp/XzV5RWv0JS+UpL2wwU4YJhhNU6Gcmut6Kh6sB
	xWpj3SLJ3WwWuBUF1tUP+//8DHHbmiMECYKkDSBYS4z+J6rg29+UGjsRoUBWC9yoPhwXNw
	NXVYcBvsqmK+UjxSbxIX+BnjFDP4A88=
Message-ID: <928a4bf0-9482-4564-93e8-a84a0f14ce10@linux.dev>
Date: Wed, 4 Mar 2026 08:34:04 +0800
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
To: keys@linux.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Chen Wang <chen.wang@linux.dev>
Subject: Updated key for Chen Wang
X-Migadu-Flow: FLOW_OUT

This is a multi-part message in MIME format.
--------------OaxpTGTGQqnMmLGxccGYvY02
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am updating my PGP key as per suggestion from Uwe. Please see attachment.

I removed the comment for linux.dev but keep the comment for 
outlook.com, because I've used that email address before for some public 
relations work, while linux.dev is a new email address that I haven't 
used yet.

Thanks,

Chen


--------------OaxpTGTGQqnMmLGxccGYvY02
Content-Type: text/plain; charset=UTF-8; name="export.asc"
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FYVIxZXNCWUpLd1lC
QkFIYVJ3OEJBUWRBaDhXS29OWkJFK0lMZnZ6OUdCeWFRd0xRV20rM1NIOWRoaWNRClFneGZN
ZnUwSDBOb1pXNGdWMkZ1WnlBOFkyaGxiaTUzWVc1blFHeHBiblY0TG1SbGRqNklrd1FURmdv
QU94WWgKQk5nOXhZbm9ITGRvVzd3aTRvY2IzbEM1ejN0MkJRSnBwM2R5QWhzREJRc0pDQWND
QWlJQ0JoVUtDUWdMQWdRVwpBZ01CQWg0SEFoZUFBQW9KRUljYjNsQzV6M3QyS3FjQS8wUkgx
YXJ4M2Q3OWU3ZUw4VTY0VDY2V1IxR2J4M2ZwClpZaHFERlh2L0czQUFQOTVpL2ZwVU9vblJE
eWQ0alZBRjVkSVRCTU1WQmliOWhMcGpJRGREU0Q3RExRdlEyaGwKYmlCWFlXNW5JQ2hNYVc1
MWVDQlFVaWtnUEhWdWFXTnZjbTVmZDJGdVowQnZkWFJzYjI5ckxtTnZiVDZJa3dRVApGZ29B
T3hZaEJOZzl4WW5vSExkb1c3d2k0b2NiM2xDNXozdDJCUUpwSFY2d0Foc0RCUXNKQ0FjQ0Fp
SUNCaFVLCkNRZ0xBZ1FXQWdNQkFoNEhBaGVBQUFvSkVJY2IzbEM1ejN0Mk0zZ0EvM1F2RlBV
NFk3eWlhL1ViNXdDOHNZR3UKWVIyOHY5TUhWN3B2UTFUOXVoQTRBUUM5WlZKZVIwQUkwenUz
QTNrSXUwM2hyeElLTE5nbytqYU84WVFMcjdwQgpEb2tDTXdRUUFRZ0FIUlloQkVYMWpsREtT
cDFydGR1cXUzNS9rZUF5UEdtdkJRSnBpMXhpQUFvSkVINS9rZUF5ClBHbXYwalFQLzJwejd5
L0xtSVZWRmZIYXFvYzN2Wk0veE9OaEsxajVEQ1RRR3ZuK25MUUxPTGZtbUs1YzVhZ0kKMnN0
c1I4R1BKc3QrV2xRaXpXYWIvYzZ5ODY0NXB6RTRIREhDUWZTWDRQaDJmRUJTSWNlTUxQTXBu
ZEpOT01acQpDQldpNzhueURJaXdIYjdoK0hNcDNNZzFRVEtHR0NZNk40NTkweXk0YUczak1y
cUF6bHE4QmFDMFJBam9jT3BDCnB5ZlBabW5JNEF2VUI0MUhzRlFMeFFSOTVkU2l5ZkFVczgw
WXg2a2gzSVhkWHBHK3pRbkl5SUtvd0dYQ0xkRnkKaUZEeXREdDYxWVU1UXdFQytYdWNPT3FH
c0I0TlorT1VjaHhqZFRROFpreDM4UVlDQTY0bENrbDZVaVpwNkVmVQpneU9jaS90SnpMTzVo
Q2tpblFBMUFFcGQvWXNnUWVwVmwweXU5SXFzN3UxTHpqYjhYdTlCNnNUTnV3RHkwRm41CkpR
QjZsVTJlaXJvRmYvWTUwVXNCeFkwSSttYVJlMWlDZkpYMWNkWW50N0FDaUFtYWdsTlFjWjVi
aURXYnNDVisKVmZYZC80T3Zra3Y3QXNQRUlnYitWRmRoWmMvRE1ta1BUZjJDY1NzeVN5d3Bj
ZGo4cjk0ZEVtaFp2em1VOVJDUApLdzY5aW5ITDN6Mm9HNTYyUExVbnBuSmhTSUtRbVFIbzF1
aFdIek9velIwWVZWRlR1UzdVbE5sb0xXNWxHbkxhCmt5cUNZSjAyRENXY3dSSE1ORndzUEVs
VnQ4cXZwZmprajVQSjdRVmhwVmF0R1haZjNrcWk5Z3o0Y3ZxbTVZZWUKZkl6YXR5U0t3bFBq
S0tUbHNDQjQwTE4wVHhHWnM1NUU4NXVzMm11K0ZEbVFMemlFZjVDeHVEZ0VhUjFlc0JJSwpL
d1lCQkFHWFZRRUZBUUVIUUluNnlwbW5jQzRxYlJiUmpEekEzZTZlUGpNTDBQRWhONkVYLzFn
aW5FWUxBd0VJCkI0aDRCQmdXQ2dBZ0ZpRUUyRDNGaWVnY3QyaGJ2Q0xpaHh2ZVVMblBlM1lG
QW1rZFhyQUNHd3dBQ2drUWh4dmUKVUxuUGUzYWZtZ0VBMTJIS0Z2M0tlT21oMmE3SEk4YVYx
cGhadXBsZlB4enBKRHlZbUxBdStxa0EvM1RkSjNmNApBekZDcnEwWjR6Y1RSd3NNSWpPYyt0
Y3RjTXhLMmIxc0lja0IKPU9qK3EKLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkgQkxPQ0stLS0t
LQo=

--------------OaxpTGTGQqnMmLGxccGYvY02--
