Received: from pegase2.c-s.fr (pegase2.c-s.fr [93.17.235.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82381217659
	for <keys@linux.kernel.org>; Fri, 17 Oct 2025 06:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.17.235.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760683809; cv=none; b=IN9mAT3hPGm+I/H5Er/u40OqWDwIrKpPn4dszZM3V9HXxhvphTcDVxCYzb8Lx1SVAwnU7EojYo2RYj42poZqTQa0hVFhzAwv/FLIlXZNzGi1uAcnwnMizdWbniDV7eCs/DJ7zZX1m3Dwfwvux71SiNW831hdd2kzaSM1w7kScQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760683809; c=relaxed/simple;
	bh=uY3w7vTmjtadZWX0/+F+4ud0BE4IRYcd+VyFCdxvYFM=;
	h=Content-Type:Message-ID:Date:MIME-Version:From:To:Subject; b=JVtGhYolOnz4Py/yMBCTJ4h6xvVQXQgt6HfnybkZDe7iI1dBO3X+yIrC+n45I6AuND8SCx5y9yNjOEbbuQrCT4LSM9+NDGqySUV71aI/fRa890r2nHSHyzUi332i2sTZkMEreW2QBQ91+vcAzS5kD/mhY+CRJ57RH7Cdv8UtaX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=csgroup.eu; spf=pass smtp.mailfrom=csgroup.eu; arc=none smtp.client-ip=93.17.235.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=csgroup.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=csgroup.eu
Received: from localhost (mailhub4.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4cnvxT0y7gz9sS7
	for <keys@linux.kernel.org>; Fri, 17 Oct 2025 08:27:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_6RGjGzyUyl for <keys@linux.kernel.org>;
	Fri, 17 Oct 2025 08:27:09 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4cnvxS6nkQz9sRy
	for <keys@linux.kernel.org>; Fri, 17 Oct 2025 08:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id D7E9F8B773
	for <keys@linux.kernel.org>; Fri, 17 Oct 2025 08:27:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id G71R5hbBwFHr for <keys@linux.kernel.org>;
	Fri, 17 Oct 2025 08:27:08 +0200 (CEST)
Received: from [192.168.235.99] (unknown [192.168.235.99])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 9F2398B763
	for <keys@linux.kernel.org>; Fri, 17 Oct 2025 08:27:08 +0200 (CEST)
Content-Type: multipart/mixed; boundary="------------d2I3TiJPKADwHRKzv8p88pc0"
Message-ID: <b2de2044-5e32-431e-8dc3-2b401b38cfc0@csgroup.eu>
Date: Fri, 17 Oct 2025 08:27:07 +0200
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Content-Language: fr-FR
To: keys@linux.kernel.org
Subject: Submitting my key to the keyring

This is a multi-part message in MIME format.
--------------d2I3TiJPKADwHRKzv8p88pc0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Find attached my key for submission to linux kernel key ring

Thanks
Christophe
--------------d2I3TiJPKADwHRKzv8p88pc0
Content-Type: text/plain; charset=UTF-8; name="export.asc"
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FWnM4SDZSWUpLd1lC
QkFIYVJ3OEJBUWRBbWNOcHljR3QwQzVFTERzMGZGdVdvYnMzbW0xNkp1RlF0Z1JMCksyUHRH
L0cwTGtOb2NtbHpkRzl3YUdVZ1RHVnliM2tnUEdOb2NtbHpkRzl3YUdVdWJHVnliM2xBWTNO
bmNtOTEKY0M1bGRUNkltUVFURmdvQVFSWWhCQkQvNXZpemtONFhyTUpqSTJpcEwrc0J1TjE0
QlFKbXp3ZnBBaHNEQlFrRAp3bWNBQlFzSkNBY0NBaUlDQmhVS0NRZ0xBZ1FXQWdNQkFoNEhB
aGVBQUFvSkVHaXBMK3NCdU4xNDlSSUJBSjkvClNMQ2ZtQ3BseXJHODBWc2g4MitoVzRJUUI4
Qk5EKzkwTXV0SDU2Q0NBUUN6Wm82eWs3amkvODRBVUpsa0V2RmYKa2VtK0U1dGJIVTlzQUVC
Z01zVy9Cb2tCTXdRUUFRZ0FIUlloQlBSN21tSjI1ZzRhdjF5QXlDVnE2aGhIdlZhRQpCUUpv
NzZHakFBb0pFQ1ZxNmhoSHZWYUVaTk1JQUsvQzdJenVtd3N4Wk9PQUF2MG5uQUxRVHJpRU9L
UkpITUVyCmYrSGs3NENBaVBnKytUd0NuV0NtYzRQNG5GZ202VkZzcjZRU296Q3FUQjA3NUpZ
UUFqcFJ0eFQ5UWdJdk9seTIKUTR4WEY3Rzdpb0tIWFBLcjVoT1lZMmhvKzh5OE9RUXhJNWpq
UGw5eVMwbDJpZFBuNEVDL0lGNGRwaTAwUHllNApFNkhpOTY3cHdzazh2N2RtUk9iMFYrSzc3
a3pNclNPRDZRYzFuSmxVSlZ5bVp2SUFKREhCN1Vld3JDTkJSQmFYCjAxTkdGZDdXVjY5aW5X
N3BzTE1jUG50U1dsLzN4MmI1WTh4NENqdDExUmJhZU8xbnU5dnAxNkFzNWI3QlBiRjEKN2lw
MzFZci9yU3drL2JIWUJMUGdEM25RTkU2SkRWVkNnY1VOUzkzcWJrb2RBTnF5YVh1SkFqTUVF
QUVLQUIwVwpJUVRVSmxmMlcrdWRSYUFFL1BxbXpaOEpiMlFzc3dVQ2FQRmhFd0FLQ1JDbXpa
OEpiMlFzcytaaUVBQzlQbkFLCnNpbmZPRFlCSVVTZW5hM2tET05nc1dpNThiRy9MdUU1YVpU
blJ1d0NDcVFHTkpJZTY1WFp0S1VyQ09HUE9DbW8KTDhRRWhnNEJVdStlUnJlWElRUzMzMlBn
bG0zVHpmSjNIcGdtOHZjb21KYXByTFdKazR3UkNzS0pYb0lJQnMyUQpSZFpmOFdWZ2lEVTV6
b1lyYWlPYnRnMWkwS0JQeWJRN1lFSnZXRHVvbzR5YzQrNkVxbHEwd3hRYXFwYjk3VmRTCklh
VGFqcHBNTFluN2lOcmMybHlOVm1jUE5wRVNXYThDSlpIVWd2OHNhOVZmajU5eXZISzMwYWtC
ZkZ3bmpWaXUKbFZtR0VKNDFoYzNkd2dLbjVMdDZadm1DMVhwdXN6clBMcVA3TGR4UUpOU1hB
OUhiNnZWWjdMbGR1c2toa2NNUwpPZkRPZlpZeE12SWlBWHB1TExPbWZDTytQWXdRMHU2OWpp
TTNZZlJ2WWJESEhiUmpsVkROZEZFb0h4bHlyR2tGCit5SXJwY2NvMmFGOXpJRnlJb1FGekxj
VDl3aWtoaDF2a2tkaU05c3VXMkt4STVWQVdJY1E3U1V0VmRONVFNN2QKM3RkWWtKRWdIMmd1
ckdpUkVsV0JWaGJFY1ZRb1ZWbDB1SFBkc2ZxVExXcFNodW5mWVBidUxESHhETHFtNkZUZwpv
VUxWdy9jMEhUNGlPaWxDcnM2L1RrekNJYjMralBjY1RhY2FkODZVSXNoSXRNTEV4WGl6SnpJ
UjQva3ZHZ3laCkV1UGpRS05GTnI2U1lnbElXL0kxb3BhdGhlaUpkT1IzRExyb2N0U0IwZE14
RnVDTlQ1NkxVSzdrMTNYK0NKekoKN2tVbmV0M1ZQZFFHbTZPa2F5T3oyR1NIR0RhZEoyM3NN
OEhHMUxnNEJHYlBCK2tTQ2lzR0FRUUJsMVVCQlFFQgpCMEEzc1YwYjZUSDJsTStTOStaMHA5
Qld1VnpKUFpKN3NPM0ZvTGsrNXJ4RUFnTUJDQWVJZmdRWUZnb0FKaFloCkJCRC81dml6a040
WHJNSmpJMmlwTCtzQnVOMTRCUUptendmcEFoc01CUWtEd21jQUFBb0pFR2lwTCtzQnVOMTQK
MVF3QS8xcmJIbkNoNjdrRTlzRll1NzlHZU16MmFJUGxBb1dWd1UxTjBJeXZZTENlQVA5eDlJ
U2NzcGova1VBQQpreEIwNFp4OVF4RDZHK2JncURwRUhEaEdCc3ZMQWJnekJHanVYcUlXQ1Nz
R0FRUUIya2NQQVFFSFFOZ2NyNE5ICkFpazFtSDdqN0EydWc3dDVjYmpORjVjaElnbStBSERp
aTR5MmlPOEVHQllLQUNBV0lRUVEvK2I0czVEZUY2ekMKWXlOb3FTL3JBYmpkZUFVQ2FPNWVv
Z0liQWdDQkNSQm9xUy9yQWJqZGVIWWdCQmtXQ2dBZEZpRUV4LzhMdXBpSwo5R1Z2bGJvdjNa
QndKcnlyejFNRkFtanVYcUlBQ2drUTNaQndKcnlyejFQRWhnRCtNOUt4QW5Qd3FtaDR6dWN2
ClJyQmIrUkJvbUNhaUk3RFgrejNXK3FWS2kva0EvajUxT0NOaklGcUQxWTIxQTl1K2dxaG5y
TUtxWEM0RzM5OFIKOHJmMGR5a0dmdllBLzEzckNoMTRDbThiTmE0VzArcmNGSWZXWWRGU1Nt
bnlLWVhtSDNHUFJFQ21BUURwbVcyUworWmlqdGhiZHROZ0locmhIbHQrWXVqSm5KZHJvQ2w0
SU9iR0ZCQT09Cj1LTE8vCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

--------------d2I3TiJPKADwHRKzv8p88pc0--
