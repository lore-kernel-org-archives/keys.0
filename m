Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2A1FC0B
	for <keys@linux.kernel.org>; Sun, 20 Oct 2024 06:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729406044; cv=none; b=RSo7XI5QUuWMBlxnJ+L5F6TSJQHuLbf9NGNj/ZYMUUpv6mtrym1ufMO2F4NsfipAV9I6I/J9UJci8YHNZiKGP0PO0gL2MQgl8XIOYGUS8zqteZUQi9IT9qX4jBjlqkChHhT0d3ymXVRyEZvVNTfrddGwOcDLB/ZJgjbG6ELe9WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729406044; c=relaxed/simple;
	bh=AL+AmXi7lcehkBXcdbgqtE1jIQlWp/rpPbRod+goBUg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BZler6MkqwmTZEiiVewJ1A2Z93UtXoIxNvRgV8sndlJF0kUkAWqcsNEvZ8pnaOFYPlnhRwInfqNIJUmYMEwP7QOzzKUSRErGEI5c+hMgAp7q++SR9w0E06lal/MQ82WbcEKG2M7uxaRZLRDQV6kN+lYLz9hK0Atws8W8mtlUEvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yIWdCHJP; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yIWdCHJP"
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9a2cdc6f0cso440890066b.2
        for <keys@linux.kernel.org>; Sat, 19 Oct 2024 23:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729406038; x=1730010838; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AL+AmXi7lcehkBXcdbgqtE1jIQlWp/rpPbRod+goBUg=;
        b=yIWdCHJPqRyOEKJtluiQ5gxmRINZu+Ds83onmFKcQW2gl45JD+I6PTdxUxr01ZzCTa
         HyzjcFCoZ4ve2UH/degW1eFVhZpVcErqkmsCHcwIkjyUNI5chErcNHdncuf1l5955n8Y
         FFvCLPmohmepJaGX8yaftyhYclhPcZpeUVnaH7C24WpQeJA3ylSzcPIH10c39TXwd6u4
         cRtmrw5i10atud1Gxu8SLIkGYWm6HizRQUfDund/eNTLWseb7cYz77FAGBcWUN+RtjEZ
         4l/XbSceE8jqEQkjNI/6iVoEMBrPQMNPSxmVOeDj1o+ujLHp9m6xF1ziHS6pbwQSyZ82
         KFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729406038; x=1730010838;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AL+AmXi7lcehkBXcdbgqtE1jIQlWp/rpPbRod+goBUg=;
        b=bO7x6WGapnb45YdM1ARr87XKAaz8ZVBwN87LreT5Qrq91atPDkALL5Btel3PRPgVVy
         Vry+UG/2cDN++8t6B2YXOIQwvkguZ9CFvbFqYEEdqFe/IVGaTmTjV/G9nu8usB8m6P36
         E7MJ2GqeIGC8Kv8pt9qsY8DHwWjBzWKPdI9OI3lO8JiUhe5R21zZ3nOMpHGfg2ANkMbX
         wuk8cxrhyRCWAgHxdn5bl2NnWsWsjgtuZsqP4YLQ2xBeLh4UV4sGgSBXfNyejuxspgst
         vHTTQ2rXfhDAkXjfF4LHtIY+h9bY0BWPp9qoHbJeQztDgmK4gYg/FhZI03/BqYdPPRRb
         vkQg==
X-Gm-Message-State: AOJu0Yx4req6YrJQ1on+aIuu1TTbRFBUdZ8lQSNOhrUgydo0ZZH94KzV
	8HAbXAxFZzd1nbAWwOdO+PwTFY67CLHm2miz6BRrbX1n9ErbQLtjhlmrV7ffWognl1d8WPJhVez
	x
X-Google-Smtp-Source: AGHT+IGzRkVwzdUm7b1KpRy/4LCJILVfRMmoS78mLAGY54Tx+/uPveIJLKkZ9RZcian/7y4AaTSbBw==
X-Received: by 2002:a17:907:7fa6:b0:a99:f91e:4abb with SMTP id a640c23a62f3a-a9a69ba24fcmr797479166b.27.1729406037922;
        Sat, 19 Oct 2024 23:33:57 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:c75a:6d73:cead:b69a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a913078cfsm56287466b.96.2024.10.19.23.33.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 23:33:57 -0700 (PDT)
Date: Sun, 20 Oct 2024 08:33:55 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: Add my key
Message-ID: <f2yjsbtqgb4owikpezrwfjv5mhc4byqedzuozflyz7xwfjvvlw@7pnibsevrk5h>
References: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>
 <20241015-important-moth-of-chivalry-f9bedb@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x2lod3eljxutguiv"
Content-Disposition: inline
In-Reply-To: <20241015-important-moth-of-chivalry-f9bedb@lemur>


--x2lod3eljxutguiv
Content-Type: multipart/mixed; boundary="ki56bsbw4yy7kfd7"
Content-Disposition: inline


--ki56bsbw4yy7kfd7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Konstantin,

On Tue, Oct 15, 2024 at 09:46:14AM GMT, Konstantin Ryabitsev wrote:
> On Tue, Oct 15, 2024 at 10:41:22AM GMT, Markus Schneider-Pargmann wrote:
> > please add my key to the keyring. It has one signature.
>=20
> Hello:
>=20
> It's a valid signature, but unfortunately Uwe's key depth is already 4-de=
ep:
>=20
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/E2DCD=
D9132669BD6.svg
>=20
> So, with just his signature your key is too far removed from Linus to mak=
e the
> web of trust work.
>=20
> Would you be able to get your key signed by someone else?

I now got another signature, which I think is closer to Linus. Attached
is the updated key.

Best
Markus

--ki56bsbw4yy7kfd7
Content-Type: application/pgp-signature
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=0AmDMEZuuy5xYJKwYBBAHaRw8BAQdA5Qro2=
BO6t/tB/xz8j5dQCdkt8lTfiVRX3BPh=0Ag7qQvpe0LE1hcmt1cyBTY2huZWlkZXItUGFyZ21hb=
m4gPG1zcEBiYXlsaWJyZS5j=0Ab20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECH=
gcCF4AWIQS63Yjb=0AiJ/cPoo9X+YS+moB4KRbQQUCZuxdfwUJA8MRmAAKCRAS+moB4KRbQXSIA=
P4gc8MK=0AJwL2qH0lXygJbxfEvMfnTNKfcRICgpUvuqRMtgEAyUca6/Uru2cxITc+/ohC83DQ=
=0ACBckGZKo43eiSS9xaw6IkwQTFgoAOxYhBLrdiNuIn9w+ij1f5hL6agHgpFtBBQJm=0A67LnA=
hsDBQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEBL6agHgpFtBu2gB=0AAN6lswzUJRp1C=
4xZpXFEeyXxb/kmIZRaUw+4YjqVcs1bAQC9r4v2UEA+fp6JrIIE=0A5hhO8SJeLXflD/pklpFn4=
EoFAokCMwQQAQoAHRYhBA0lEfMiv6scFYAma+Lc3ZEy=0AZpvWBQJm+QM8AAoJEOLc3ZEyZpvW3=
bQQAJi6eGIcLVa5dt30sc+ghqIh5YKWeFGu=0AOiPnSLslrlrJ+2javtUFXpldOytSTBIjT1Pzz=
jIkXlh0EUpw7yoXQgRhKhPyJYFq=0ApXDSJLX2iAg7Cnhl1rkpISnP2mryspiyy2hhtPaRCBZxO=
cQGkL5V7UwGs5LMuDcb=0AUntpgxTbX+Td27xzM7ua3nGSQWYYcrHrheuCRf1SPzgbpWJRvbgpF=
pCbiOwkmyi8=0A/6RLB2+CaQNNh2eqtKU9z25PYDXNjfQs8WD++TgS2kFH8BUSAZNfXF6GstYqH=
1Pz=0ApZ5GUEHyk54KzCAdhCw3dtCSA6lYyHl1w6b/jeZ54qBjTwg7t/nGk+TgcVeI8CFN=0AeH=
A5IbFroGZY9gOLmCcbWpy+BnwBpVSJ/fwxcSYzpWXOFFXYgn+ECr+ODm7MAn1t=0AXz9DMM3Uhp=
1KwyGqdQPur73w5ra1QK0FhbMf+Y9Z7S+m0qna2AtibfW5Tcq3x9v8=0AEbIENYcJ2R+63B+ARG=
LxuQTY+ihGMqwZnq+eXO2oAYR1lDtBlYY3bgugeMpczLnl=0AYLN9G2Ix04bt3zGotA0CpklCdo=
L0tC2C/FrMwaRRo+m/JP1R2gnhUiaF6FU2czb+=0AB0aPQ41KWDxpzcud3S4xMMWr0Fz66fDxOX=
BP68UKisWVHMC9q5WwcLwTWN+HEekn=0A+POhOWj/Qly5iQIzBBABCgAdFiEEe4dGDhaSf6n1v/=
EMWTcYmtP7xmUFAmcSzfkA=0ACgkQWTcYmtP7xmWOKhAAgveV0jqFsbu2DvV8ZnZOsGnG8UZN8Y=
gKBlfxC6iAymQT=0A1VvsRHtWY5SW3isWiziPtB9bI0POiYT+7BBva16gqZGaHzQ0zqH0OZ5/zU=
0teqYA=0AAtp9gID0bCbE0liT46E4DrcqwBmhCykcVY60Bkx3jsMnGXg+y/MuDqqmNlg1qse7=
=0ADQpvJk3dUp6mVcS+9yTdkxTj9anPImpZgRe432wPKgoAWOO+uN+trm7+Qb0EvlUL=0A8Ziad=
sS5R8nvzEJ3WLzR/+KQu6f6TlYUZ4+yeeJeSSwuLcBuBKqa43UbbYe6aSQd=0APQJCo0T0igqoL=
uU4L4ejk1T1V8Rb8wLGjAlXFAOVZlv7D8Fch7H6wTK4Kr8g0+Np=0AdP105+C2ry6QyYw/7IzaI=
BINl0FpATQyD3baqr54r2cdMR5qNZ9HTbHBJ6lE5XJm=0AG6gN4g5NcVJh47vZbYBWIBOZQh3EY=
O0AuqHhvzRKv/B7ps6DfUIVCcewCf/HBzlo=0ASezVNd7b68coE0tuHX/TMi6qXG1yjJzoWQIBD=
lyLUm1NnOsWtKH5jbAjj7QqhWng=0AwDdO368zgiPjpo5YvgGL7cW9NbqrWxGipt7FQN2lcoGnv=
S9Yp7RfeezOb9i7aEj/=0AKkBTw02DliEyILwuWd7217S2pmEQsHkkRqfkZbVambQ8B+f8KtXQ4=
LgGs/cx5/y0=0ALU1hcmt1cyBTY2huZWlkZXItUGFyZ21hbm4gPG1haWxAbWFya3Vzc3AuY29tP=
oiZ=0ABBMWCgBBFiEEut2I24if3D6KPV/mEvpqAeCkW0EFAmb9juoCGwMFCQPDEZgFCwkI=0ABw=
ICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQEvpqAeCkW0F3mgEAy8exrQeO5RnP=0A4nzmdCY5RJ=
lINw1crSJb6btNejJo4i0BALshLxTPMsr1yOMpsBKsk/hNoRvVRc8/=0ARe5iBX/QnXoDuDgEZu=
uy5xIKKwYBBAGXVQEFAQEHQBiekWhlER7O+GnUM2HOi4nL=0AVkdTSb2b5EMD4djxI/gtAwEIB4=
h4BBgWCgAgFiEEut2I24if3D6KPV/mEvpqAeCk=0AW0EFAmbrsucCGwwACgkQEvpqAeCkW0Fd/A=
D/SQguqxO2GK9Y/YFy0bo1SRb+lkik=0Amx8HZIGubUmLWEkA/0DznYG2KtRnXKBxq9jM8nGzk7=
QS3igxoPwb2jw2WJUNuDME=0AZvQj1BYJKwYBBAHaRw8BAQdA1hKnpOrrk/rcuXdWpFKMB6J5W7=
0Qbr39RIZDVDVH=0A//+I9QQYFgoAJhYhBLrdiNuIn9w+ij1f5hL6agHgpFtBBQJm9CPUAhsCBQ=
kCx+oA=0AAIEJEBL6agHgpFtBdiAEGRYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZvQj=
=0A1AAKCRAkjLTi1BWuPy4lAP9oC08Jkip5tTOIXyQaZ7Xn3ZOQlef2CazRpEYHxu0m=0AkQD/a=
ZLAhq/btFAXx2W3fw3+ulm+8DVGV1PpEIw9K9blhAMtlgD+LQY4Can+tWKU=0AmhBrDPzwHZQVF=
fovAPQbTPrM2tmGJc8A/2RDNlWbZdFkbsLa/AbU8nK3wjRkXVaB=0AVe9+eivA+qsHuDMEZvr+a=
xYJKwYBBAHaRw8BAQdAOlPl1CEHU4/dcsoT5a5w1DNK=0AtHCE4rxVfraR0g7hkbSIfgQYFgoAJ=
hYhBLrdiNuIn9w+ij1f5hL6agHgpFtBBQJm=0A+v5rAhsgBQkCx+oAAAoJEBL6agHgpFtBI18BA=
KDrC3GzuP4ezblzrSvBevWwE3cF=0A/wjHGZMuW0QrO+nBAQDyYjssX+vzykbGK776d3d7Jh6Fm=
nvDZ5aajap1JCVMBA=3D=3D=0A=3DH+my=0A-----END PGP PUBLIC KEY BLOCK-----=0A
--ki56bsbw4yy7kfd7--

--x2lod3eljxutguiv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZxSkTgAKCRAkjLTi1BWu
P+9NAP0Shxpn80UgKoaeJtBtXNLPduWksYc6aO606kSh+8IjJAD/c4O/qsuaO1Ig
YiBcJw1SMGW/zoKXnTuyfyyNuvxSJwo=
=LehY
-----END PGP SIGNATURE-----

--x2lod3eljxutguiv--
