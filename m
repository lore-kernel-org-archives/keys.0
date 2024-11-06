Received: from smtp.smtpout.orange.fr (smtp-19.smtpout.orange.fr [80.12.242.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2D3205137
	for <keys@linux.kernel.org>; Wed,  6 Nov 2024 17:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.12.242.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730915446; cv=none; b=EL9Gj1fgW25tjY20FSWcyHNQFLwg4cjEq+lpzvOLqS2RUyqFjSlYUZ7+fg9fFJ//k6gcagzUmq73J6f4ePq2ISXCBgfRtf2rm7+WpjdURF1v9KeSw9Bv2A/tcB2JLOev9Qo5TTF1B+dstKMKaczkStVrLyzJgDcYngsrjLOHsUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730915446; c=relaxed/simple;
	bh=CgeQVsNJRz/+mMxMdv8i8m2xMIVwjMwlrOSRv7m1yDg=;
	h=Content-Type:Message-ID:Date:MIME-Version:To:Cc:From:Subject; b=RhnBLUYmHDoN4cKwAQtIMH/Nt0m/1gmMNfU2nmlfOnk2BZXQlXZY+5qqFk2utFyyZnjbd7lshiTC9tzhuq16sNOfHelMlA6VVkgBc6XqEJ8a3B8ccoQNgapa4XS2WGRECqjYqkxXdWJuq2bePr4kEuCRfJNrgIz6k+gzosYJDqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr; spf=pass smtp.mailfrom=wanadoo.fr; dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b=P5fnea4c; arc=none smtp.client-ip=80.12.242.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wanadoo.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="P5fnea4c"
Received: from [172.16.82.72] ([124.33.176.97])
	by smtp.orange.fr with ESMTPA
	id 8kAqt0YgNaGZA8kAstY5Er; Wed, 06 Nov 2024 18:50:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1730915435;
	bh=rKIuD3Gh4zQc+zo7pSpQhuNTmyPl5HzCiD8o1ReKRv0=;
	h=Message-ID:Date:MIME-Version:To:From:Subject;
	b=P5fnea4cXhrKUSIFLXUYZCm2r3rMKzOaQWkncNmr5+NwRlxDuvF1aEFDh7MZAYxTo
	 M9TsNJ0MrcGXmN6297q7QPjrM25Lb4JL8UYjBfJocqZMnKK0WpLLoQ5OEPWwxPCN/9
	 vPOe8+WGmYWSr9qelqAyFAtT1sNTZAo70VyCC+o/C6n1t/dAoCv/Vm1Ly62wLWOEBt
	 UPxS2KpiFYC0iFebyYheINkK2+/ULD2hkXQHEUKH9nReLnwWD9raYM2cKtugieIoqc
	 ceCq0KK5ddpDVx3ohSKo3DR9f5Nymu5aUVdLXp0L5ckmvYpHJLrnn0PRDpUN+xTWeM
	 6aW8gFj3EvoJg==
X-ME-Helo: [172.16.82.72]
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Wed, 06 Nov 2024 18:50:35 +0100
X-ME-IP: 124.33.176.97
Content-Type: multipart/mixed; boundary="------------mtvOVy4Kqu0rotWzuvBCp1yl"
Message-ID: <fabfabb6-7916-472d-9755-3b958efa3c81@wanadoo.fr>
Date: Thu, 7 Nov 2024 02:50:32 +0900
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: keys@linux.kernel.org
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Subject: Add Vincent Mailhol's key

This is a multi-part message in MIME format.
--------------mtvOVy4Kqu0rotWzuvBCp1yl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Could you please add my key to the keyring?

Thanks in advance.

-- 
Vincent Mailhol

--------------mtvOVy4Kqu0rotWzuvBCp1yl
Content-Type: text/plain; charset=UTF-8; name="AB5FEB886DBB99C2.asc"
Content-Disposition: attachment; filename="AB5FEB886DBB99C2.asc"
Content-Transfer-Encoding: base64

U3ViamVjdDogQWRkIG1haWxob2wudmluY2VudEB3YW5hZG9vLmZyIGtleQoKLS0tLS1CRUdJ
TiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FWmx1b21SWUpLd1lCQkFIYVJ3OEJB
UWRBZisvUG5Rdnk5TENXTlNKTGJoYytBT1VzUjJjTlZvbnZ4aERrCi9LY1c3RnUwTEZacGJt
TmxiblFnVFdGcGJHaHZiQ0E4YldGcGJHaHZiQzUyYVc1alpXNTBRSGRoYm1Ga2IyOHUKWm5J
K2lMSUVFeFlLQUZvQ0d3TUZDUXAvQ0pjRkN3a0lCd0lDSWdJR0ZRb0pDQXNDQkJZQ0F3RUNI
Z2NDRjRBVwpJUVR0ajNBRmRPWi9JT1YwNk9LclgrdUliYnVad2dVQ1p4NDFYaGdZYUd0d2N6
b3ZMMnRsZVhNdWIzQmxibkJuCmNDNXZjbWNBQ2drUXExL3JpRzI3bWNJWWl3RUFrZ0tLQkor
QU5Ld2hUQUF2TDFYZUFwUSsyTk5ORXdGV3ppcFYKQUd2VFJpZ0Erd1VleUIzVVF3WnJ3Yjdq
c1F1Qlh4aGszbEw0NUhGNTgreTRiUUNVQ3FZR2lRSXpCQkFCQ2dBZApGaUVFUFpLeW0vUlp1
T0NHZUEva0N3SkV4QTBOUXh3RkFtY3FycG9BQ2drUUN3SkV4QTBOUXh6TUJnLytLZW1DCmo2
eHU4cXBabEI0R0pNSkljcTQrL3ZXRWx2QXFIQ1VaQlJaY2lNYWxXYkJVVmJCTVhzcDFFcFRw
dmFsUVJFSmEKL0NQdDY5WGpSOGVlVzh6UEk2ejZvcTNDV0JqOHJYWHlxVXNPTnlqbjZvSkFt
bDRKWEFKbXoxUWFEYVlrckhILwpVTHhtR1dNWHRwUXVhaVBKdStOM0ZsamtmdFBLenpVUzVj
VGh1dW1ORmVuMm5VZ29oc2wreU1KZmhYRUpEV0tGCmFsYVcxWGVoZ29ZMjJxazV4OVVzRVY4
SmhVeEdBWngzR2RJTElERDJiSnNtMFhHdzNYSURXQk1vRmVIN1B3VXYKNlhCbEpERmM4OHdI
UUZPSWdtY2FWalYyS1pyM2VJOEdacVZhKzU1M3BPWUZSWEdWeWNIYkZmcGpZVzFRSkxmMApq
MmhBWG5HSUVVeFoyZ3RWZ3JnbEFwRUo3a204UldSM0llYjJrZ2s0Tk53NnpERXdmODRhU3c2
SEhILzliWStYCmtRYzNyNllKWlZLTUNmZDhZdjNmUHR5S0YvRnhPWlNRZjhIbGxoNUtpZlpN
U0EyOFVkYkdLZ21nY1BjdzVkNTQKZXQ1a3BENXQwM0h2eTZGdVgydnJ5Tk1qVmcxYU1sQzJB
UEE4VUxhZVBZM1IrMVY2dWszN3Q1M1VWNExlQlVXMApsVVV6VTFocmI4R2IvSDJsOEJBSnQ1
dXBEbWtPaXdxbFhwMndNQmpnMkgrc1RmdUl1QVpMWWZ3QVBEWWNUa3FpCk9WVHVDamNQT2FM
RE1YVjQ3MzhhQi9WbUFQY3pvY2NmZjN0NUpwWGRRMHdNVXhhS1E0RzVLWDI2RWFnandlMXgK
bmtSYkdaZjhBREtTbFpVY2VkYXZYQjcvVEw1Yys3Z1I5YzVUWFdDSkFqTUVFQUVLQUIwV0lR
UmUyYVNQeFV3SwpJdEhRZ0V6cndtemJXbGJlY3dVQ1p5a0gvUUFLQ1JEcndtemJXbGJlYzJh
SEQvMGZrMUY0YWk2WGg4TzNuU3pkCm9NNkttQnRYZmNqNy9xMjcvaUlDcE9qcW9UeEs3dmMy
Ky9DNEl3YzdYZHYrUG80Y2lhNERnbWF3aGh3dnVVZGYKdytXWEJkemVmWnZIMC9HRVFPTE5O
MG9vZDJCakhqZkVuU0N6K2FuYzVmSXFGWWJ3b2dTR1RlSzlmZUt0aGd6ZgoyeXJxejQwRlhM
MGluQm9wcEJnSlk2cGtGbmFaMHkxVFMwNXJqZTJhajhaNEVlWDZMNGdMTE5rSkJWdlg1VWtX
CmU1RXVINFlrQlRvR3ZlTmVhMkNBQkxIeDg1TVFxMmtRVmVlZXFFaTZaSDJoODdEK09UdmdB
cEYrb3hLTlhONkIKOVRHdEdTUVYwbk0wL1YrUldCcnBWNEtkUkhtaDRBeGl0NkJZNktVVGZF
RnRqUTVDWmNkdDZreDIvdFJjSlZZSQpCNzhyblhreDJERDlDT2N4Y242RytQN0gxYWh3ZHFM
VjJtMUZucjMySG11MVdkOTRNUzhZOU94QkhCQVNFYk5nCjIrWmd2SjJwazVxdVFnZmRSLzZP
b3VQZG8xWDFyekJoUmM0eFk0WCsyemFWMjdscy9zWE1ZRHhkT1ZnUVFYS1cKdmNiVnlkMjZx
ZjFUd0h3N1QyNWg1SDFmV2YvV1puUlpyOXdROWZ2OC8rSFBmdHZMdWR0U2dwQnNlMElxWUhh
agpzQWdQRTRobU4xb2xDUFd4blNDdWZ3enU0bVlNRGZnZDNsUEh1KytXblpmZG9kbzk2bzV0
T2tLN3NFNTYxRkZ3Cjdwdit2T05CNHZTajNMUEtvcHIraE5NM09jZnlBZVJGSWpGVVhtM2Rn
MFVvc2pxdVBBc1lxalNJczE5Y1IxeVIKNE05Q1BuT3lJOUlZQmUxWkc0eE80VUpiTExnekJH
Y2VNdUVXQ1NzR0FRUUIya2NQQVFFSFFCMmkya0hXbTI2dQowcUhGZU1DTlJDYnFWVExpUktJ
TUtiWEROa1k3LzNDMWlQVUVHQllLQUNZV0lRVHRqM0FGZE9aL0lPVjA2T0tyClgrdUliYnVa
d2dVQ1p4NHk0UUliQWdVSkE4Sm5BQUNCQ1JDclgrdUliYnVad25ZZ0JCa1dDZ0FkRmlFRXBu
Y0oKQ3lDSWNVdFd3djA1MFdRK1FOZC9mYk1GQW1jZU11RUFDZ2tRMFdRK1FOZC9mYk9FRlFE
L1phQUkrOEhiWTI3dAplSjdPSU5wb1gzeFlCWkJvMFJnR3BseXVHc0ZFVmxjQkFJc3NxM0o0
djRwT1FHNkIwUFAvYXlqQ1RaMWhwOWJkCnBhSHlubmFXb1EwSG9ya0ErZ0tNeW8rTWxIdUZH
UDZSaGVIQlVqa3RmdnUxS280VlRDMkFBSWxoZGNNK0FQNHUKY212bTFKNXZtU2JqVEZzbG9J
ZkZnQzZRVVlQNnUwVno0YW44TmU4UkQ3ZzRCR2NlTXZNU0Npc0dBUVFCbDFVQgpCUUVCQjBD
YTIyR2M3dENSdWNQSU1ST2hMVUh1aTVzU2pLaitoTWtkOTdBUGdVZmFTd01CQ0FlSWZnUVlG
Z29BCkpoWWhCTzJQY0FWMDVuOGc1WFRvNHF0ZjY0aHR1NW5DQlFKbkhqTHpBaHNNQlFrRHdt
Y0FBQW9KRUt0ZjY0aHQKdTVuQ1ZPMEJBUGk1cVJZWDBOV29vL3kvRmM3R2NLLzB1T0J3czNN
K2ZvNU1aMVZVT1MyZUFRRFRncVdCR1BnbQpLNVhlVjJielBJZGhKN1RaODhSeDdvWTN3emtO
ekFKQkNyZ3pCR2NlUlc0V0NTc0dBUVFCMmtjUEFRRUhRRWo5CkhTYWViVWRpbW83N3hkV2pz
ZFZack1ZZkNZMEdrS2FKeTBRSU54SmZpSDRFR0JZS0FDWVdJUVR0ajNBRmRPWi8KSU9WMDZP
S3JYK3VJYmJ1WndnVUNaeDVGYmdJYklBVUpBOEpuQUFBS0NSQ3JYK3VJYmJ1Wnd0NEdBUDl4
WGRCdwpMTE5Vb3gzcGhRTVU4ck00R3JVRldEb3ZOb0lvTjFscEtVemZsQUVBbk5uV1ZNUFFy
TFhjNFk0UlNWVlBCV1FrCkZ4WEpYdHBaY0M1aEtJTWlPd1U9Cj1pY3djCi0tLS0tRU5EIFBH
UCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

--------------mtvOVy4Kqu0rotWzuvBCp1yl--
