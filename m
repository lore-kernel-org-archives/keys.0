Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1795121811;
	b=W5OI1rAJnWqh2fb2oWwJcRlRBIHKJiP639JS/+OJ2inuvkvmHqzH5T85PzGHX40nY5s1
	 0taiB+yTN8nEBAAybMlBcdo9hRUVl/HK4hvNaHDbxsVqujyOf2Q0Ez+GeMGohOzRF4P26
	 c9MRpVqIF6e5C/6Ow8TFYhqsMzGFlstbqAzNIB+kgmc/OCLTmhAnQrGnwOUZImub/wkxa
	 akskU2O0YcYjsXIpu/GrpV1lnrqbCZeU3SxDH/bBy8bY71wMnsbWXnEqtGK2g7SWuPfkj
	 vcFFKzg+ZiJyJvTQaoQcv9la9e5nYobRqPBkLmq9iC/U87sQptWhLE7+UeWBwEOHOSA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1795121811;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Forwarded-Encrypted:X-Gm-Message-State:
	 X-Gm-Gg:X-Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=nmsH120yHZDA/vmKZAZmIsCWY4l08pAydan4FFpJNx0=;
	b=ZMa+9fZaMwLLYzBiGHej4M2O7IFrHglsRjm/KqzVyO/WGO4iGJMVw5WNu5AFLTNIe+iW
	 AnVVpHqD532WyrdcNGtJOLGluW8wbBb2LnfZ7qatEfO+1Q0O/GJTJLYRx0WgWk0I6V9Ej
	 o06W0XtvUsLOnhCc3FXr137JtosUnR602OHmMF2LdChL1AyjXshfGECDCu9bAv1I4ksPI
	 7rsC674+ajiJAk6r+kgqW4Ld0bJS9jP2scphuUPfSotefWFpfqa+1qFBA3Z+mi3xX1hwq
	 9rS7YMJnNnIbau4hr8RgxKzxoa23GWlJrBKVqplRdXU3jCmcRaBOprVq9EFqtq5dqKQ==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=Fq3anCbY;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568E1606A903
	for <keys@linux.kernel.org>; Thu, 19 Nov 2026 20:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=Fq3anCbY
Received: by smtp.kernel.org (Postfix)
	id E41B71F000C0; Thu, 19 Nov 2026 20:56:50 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.128.47
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795121810;
	b=pzNJDVJXEQ0Kuh0zCBaOmlPnzHsYKIgpbK0AcBOgbPaqsCHeS1AN7baILjcobwe6WoPn
	 xQTXwEE3rHEdIIH4abNBEwuxxsyiRZDc3f6h2Ezw2LkO15GtwgAEbWywRrlE821/nmsy7
	 phM9YSROgnAiQ9BjTI02cR5pmwAb4on6e9JRyq9R3JP1wl7QVHPkNSt44xQW3AaeY/GmA
	 UnTnJwA5xxIOSzI0Lb8D3m8UD8IhjgQr61fN/Bu8J1rre9Ere9xQIUW/tzrnZOVX8Ue3D
	 gQU/I/JIajjSyjan22IF7KSmG7VyNRKIpG1zapGAi5NFJZnFeWMWFsnwedmE69n9rMw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795121810;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=nmsH120yHZDA/vmKZAZmIsCWY4l08pAydan4FFpJNx0=;
	b=qeK5Q1Mp17gzXEqcFRChD9Rj3DjLRrgcQzrd9CwlFEf/PvEuMxLkDCfIhd1q+QYCiYId
	 Gv1kk7kjQkHvJ1nZfU1Yc6/sJDlMK1INbZ3oLEnfciASAIjtYCqKOrhSBnMle9dP6anvI
	 VPVXNp7wKwSn57+9E+Tk5jAub4dM6yflwLZVHRfnYBjROMeEgkQxniJnLjfQSvLsx7HuK
	 g6qJY4Vs35egUYZb11Z7oGNOT/wSTJBNSZ5zQKkdfjexSb+WmNPgH5pQnDRdSm0dafhRf
	 7da0JV92KfyJ04oDDsXuSgmx2KcIvjseq8vuuGtXI4HGq5pJiXNHaueTCF8EiPjNjJA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=Fq3anCbY;
	dmarc=pass header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.128.47
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id A41BD1F000C4
	for <keys@kernel.org>; Thu, 19 Nov 2026 20:56:49 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=Fq3anCbY
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org A41BD1F000C4
Authentication-Results: smtp.kernel.org; dmarc=pass (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a35a60499eso1483255e9.0
        for <keys@kernel.org>; Thu, 19 Nov 2026 12:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795121808; x=1795726608; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nmsH120yHZDA/vmKZAZmIsCWY4l08pAydan4FFpJNx0=;
        b=Fq3anCbYIDb7w8jIx9Ca+v7AIoIbaNGMAEW1KKPRdUEmG06XHkXrTc0N2ZHefQvE3l
         e11dR44NJ81+MoBfiTpMCDmG4qV1N6tSksGSzkWyMV1ZNIgemlgu1pNsw7yWtej723Q4
         MgsoJm/RYH55tdFFmBkLWNdqfAt863dGxbbnGOfdY/H7C6vQ0/srU1ZowOO5/wllMoQu
         E2HaEL5DPAIiupymTyZ11skfPzpJQAM+hX8EmCymBEfzjydhHj/IbH1jGNC/wQD4vvF/
         sXJZOfKGPlp0QtXSmKrQjGBXXrdSjjQgK962QbsMSJ4X4Ft65GJ3L8TFklMwW3+cBxRQ
         OGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795121808; x=1795726608;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nmsH120yHZDA/vmKZAZmIsCWY4l08pAydan4FFpJNx0=;
        b=EumWws768nePqNY4oHb55B6WLJTd0DDuNZ2eus+Y416NQaNzGNsRqTIWtWYW86wqkQ
         N/D+4yLtdz1rO//Mj+Vh9KMUQVyh8dr4IYKK9ywPQeD50NpBjB4zpnAlNZOmfsoVFosw
         +d748D1BqOT8FP4DAaxH5EkituUoaz1vBMKDkVsVVvo0GODle9um+gvhwdbQ/sSfNhRn
         9ErHcUUPxIWg2e6peaUkQZI18wbWi2Toh39QBR70ydTYBRatBD5jTItoFVbG8WZsMSh0
         Yyw4LY2LucSQbLpHkOroa0v8ocvnpK2ddm0UHN10GFw4TLnereHmMEy9CGAy+QiuBeez
         b5EA==
X-Forwarded-Encrypted: i=1; AL+hErEx0AhnOu8/Zh49+L+WUEP7Ok+vjlDUmj0F79FPTwuk86ElIFYFb7OHXE7AcpUrXxHGKzgt@kernel.org
X-Gm-Message-State: APuU4Z+DN3XTKGhsbMriqgkZM/40ZAIPxfKy5YchwLVf3cwFyhPXMpmp
	imBg0zqICjPacf59DNjkk87LBByXetqOTtd+TR6gGtyrx2PgdUI70H93/2Uvo3ocraU=
X-Gm-Gg: AYBFou26+GqOXm5crD6ONKH5S5Z3kMy+/G1esLt+s1XJifG/3XS/z840O1zgqvokmE1
	LWhvLs7x1XVYpLBbWfXNqFBAOL2SryeKUGeE9HQ2i1XORseDzi/U8KKhOSw4EcPvE9behKeAv1D
	0pwJC9x2WfiVMzz1QV3vZBup6RlMRjMoQycBmtbF/O0KDvzSxXHoW9nqT9J7mkXvo7TDzeCZjOM
	YBN1LjUGpTL95l6A6xNx6sxYaaEUw79rZO66TuyBqUIEDim37XkeTwyNkFwn5HHiUnZODL1DmvB
	yeNXPoQyFL/YhegUuTyJo+7GkdBA+RUJXORiYSTGVPd+7FVrWbM51gGqV3R4SvMh7QJyrqU988q
	/I/iybP7pOCfJlX5znq+4HN93RInw89NfkeiPRbvUC6cc9dBrPiqzunhzIfS1azhkWY4ftWvsuA
	qYWg3F8Y28xd6tC7e9xqrnCrzQss25PaIvjleO4vN6T/DtSnJoJEDaQ3XCyexKUM48Uuy5XAfEu
	0I4NXd23bxZnyfnv2mVxyri8mNw3NSCWUZCPQW72RBWcNEbLaMwAcBzpBpRh+oI2x4hXJzyiY3G
	fFDC6IZmMvMn/OytOz8Ql4q+SkgYWTK/QZk/X9ppSI7PL7uBlpkD3n5FFjFNa78EgM6PbMFDAA=
	=
X-Received: by 2002:a05:600c:4f0d:b0:4bb:5c97:f4b1 with SMTP id 5b1f17b1804b1-4bb8881941bmr16623525e9.24.1795121807963;
        Thu, 19 Nov 2026 12:56:47 -0800 (PST)
Received: from localhost (ip-091-089-005-024.um28.pools.vodafone-ip.de. [91.89.5.24])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4bb84e5f081sm51340295e9.4.2026.11.19.12.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 12:56:47 -0800 (PST)
Date: Thu, 19 Nov 2026 21:56:45 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, keys@kernel.org, 
	Juri Lelli <juri.lelli@redhat.com>
Subject: Re: New key
Message-ID: <av9iCO9UeCBAeG52@monoceros>
References: <avcPLMVwvkWUEpJe@phoenix2>
 <avs1jP83CDmCDgy1@monoceros>
 <CA+JHD93y3917AhdpaT_WoNjz_cGk=aFmXRMW32wW=ug0jbWwEA@mail.gmail.com>
 <avtNGdnmyBUYEgTn@monoceros>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m7i3gz64q54oevsk"
Content-Disposition: inline
In-Reply-To: <avtNGdnmyBUYEgTn@monoceros>


--m7i3gz64q54oevsk
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: New key
MIME-Version: 1.0

hello,

On Tue, Nov 17, 2026 at 12:16:06PM +0100, Uwe Kleine-K=F6nig wrote:
> On Mon, Nov 16, 2026 at 02:20:56PM -0300, Arnaldo Carvalho de Melo wrote:
> > Juri tells me he'll send his new key tomorrow, replying to Konstantin's
> > question in another message.
>=20
> [...] Juri now sent his certificate, but Juris signature on your
> certificate wasn't imported when Konstantin added it. So the keyblock
> you sent must be reimported once Juri's certificate is added to benefit
> from that.

FTR: When Konstantin added Juri's cert, Arnaldo's was refreshed, too,
such that the certification is recorded now.

Best regards
Uwe

--m7i3gz64q54oevsk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmr/YmIACgkQj4D7WH0S
/k4oswf8C/KfQwP3TpcQw2aHsJBWpxpc8t/OAjUa4A1sm0Q0nAAuBhMARWoGSA9Y
LRiJlGivrh5lw99YToDPrgyifgucXqIZeOsS0cclqirs/hNQEYyla906iIwXfwYR
5zsCXONZEMRkPDiLy7NGm3ZeW4IxBVt9JnmaDQ4KPy5PP96Qj/AjynABXVI7k6Pk
6SJbU2TN+rz+wau1rudMzwZbUhFGA7r1fBqyZ6pZ6VDmxVBv52Aa03JyR33q+fur
QUAp2MAQKYhfEjtaX8gGJdTxEBSZdwaNdqCNZ1n2/7GgV2oEPQuJAfA75IlWFW/c
lDFt004zD3fjHyqtvjnoxvN53vqmAQ==
=s7/H
-----END PGP SIGNATURE-----

--m7i3gz64q54oevsk--
