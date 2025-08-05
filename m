Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A051A23AE66
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 20:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754427482; cv=none; b=QcX2jDFHzwZberf/yiC1p5sNxwO/DOU1sMhm6I+EpYASGa5VRp5l7BEpLMbyyMQF8Lsj+tuF4RcEIzDJrcEuy+9kP0lchuqRKEUtobm+DZCqvLIFdUdTQb6czc9fSFkrTYDp6mYF829zpH/8UYumaKhMQeeQGMhxD0UswO3uwOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754427482; c=relaxed/simple;
	bh=svwTcsBzMze3Rpkk3KgTUamTCpqfmn5DivHFB0TLZPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PG+ZV4fm1pvuxdrbFx8oRnPKGHaMgibbq6jMMX1ZYtFyx9G+H78qTaJhOCHHteE94z5AXPzSLGRKOi7eDNoqGrisM2eYPXRfd8e7USMVBu8VldHW0YB1gs3xoFzz2ygfR7QrRZoRMafdFtqRE+1ImEtFWlkdnFLPY4EL+uu0JUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xKWbEkCU; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xKWbEkCU"
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-61568fbed16so7588048a12.3
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 13:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754427478; x=1755032278; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UpOwDLam9xRG46yfHKC+3yYyBy+YULV31pjyEzcBg5U=;
        b=xKWbEkCUq+r2NQ70LiafVSB+7BxJ0e1gW35BXi+BYv6OSprzaC5pEdp8hwzphSX1K3
         YlAPzTrwvtUJfcW+Vj7hVk4i6cq0UNml8b2E/9XP1lL7JsO6275RgZkVBlFrMly++0VK
         t/170jRkoAvsSyIOx8IfxJ1a7ifn/5ZzRboAYsYdsGcn8MM8j0rlz60wLU0MTIwkxINg
         4F2OdxFSWmn0mi34WXqTN2AI39bXZ0aG4PfDQYZq/TyBma4ELB/sF4AFHG8wp0yDf6sF
         9z6e3vmkqnbd10I6J0/bzpP3NK++2uQDIXgHSXDxgOfTzwy5dUywSvX2E7UTQuwZn+VS
         QbXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754427478; x=1755032278;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpOwDLam9xRG46yfHKC+3yYyBy+YULV31pjyEzcBg5U=;
        b=LQmv2BfI9+0bYst3Iv96JgP5s56N5XGj25W1y/agTnskqpvQQtAgQMnrvhMm5DMpv8
         pWWT8HlsdRT+4e2kbqxc71BEUybNZ4WsMfhgTsqYfyG9onxde5ohfowDwRsiYdtiC//z
         8M6NPJwhAremye+Mf1YV1YMddDaJA4Ew6fwmD6x8rIV6qROq2XVBx7w1jhQJaDW74FIE
         b1hksM+mAjYtfZ2LbXXbP28gi9Pzwi6CCOyS+at/exNwRG7kkv1ZX2xdxGBud/q4oFzj
         QO7oNIqq2shYoo7M0s5nhVOIB7rLJl4soRzTCO4i7zCQk+ze397qQHVDUJYGvsfcQP63
         hp+w==
X-Gm-Message-State: AOJu0Yxbt4PJHcNjzqnPsKX4EHXs2I7U17pkR3fGdlinbeV858jwtQXb
	+ug2x0BPcC8u8+MtJ5FeH1FjYPoulTXrkJAvCMWJpD7r9zZh0LkB+bHBaeLK/pA2pic=
X-Gm-Gg: ASbGncuRoZTfsLvLYsr1luP6BN/dkJ9c+a8ffodvoRlMNYRjgLsDrz6IuRSmd14ScRd
	TMFG6McLdrXV50iRFQ3ht/YrOm1NEF3RrkVVfMnUzRlQzwo0Yuj32eJRsKvCjTfAlkB2QIiK3cx
	i9EkDdT4rsKxpDb3I6LLySfhWkU/ydlOOVqBQmK316Xcx3dfRl7t2XRXTcT15ELWHjhcwybs4XP
	5Z1tKJZDDe/zWR33HCMDq1HhOmADECQHJMJxffatXu5U1SfRL3UpwwiTC8CJZiqHr0/5ygvl5xp
	lhm/XpmYXoY+z+CSQQY9JhIIV9SoDKtLWEjK6fnbvlusAuqujJkwzCiH9RHe5CP4twuiH/BiDOj
	+UnKvHCFLEhk4Ue/gN7tdpkkfhkQ=
X-Google-Smtp-Source: AGHT+IFZD51rqA0pbetFQ4FNzFvrjEMaon480j2VbAbOju8SM6pKqiU2nw3DPOOfD7d+9XjxGlc0jQ==
X-Received: by 2002:a17:907:3e9e:b0:af9:14cf:d820 with SMTP id a640c23a62f3a-af9900ebc26mr41588466b.12.1754427477591;
        Tue, 05 Aug 2025 13:57:57 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af928c84154sm876154466b.84.2025.08.05.13.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 13:57:56 -0700 (PDT)
Date: Tue, 5 Aug 2025 22:57:55 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Joel Granados <j.granados@samsung.com>
Cc: keys@linux.kernel.org, Kieran Bingham <kieranbingham@gmail.com>, 
	Kieran Bingham <kieran@bingham.xyz>, Imre Kaloz <kaloz@dune.hu>, Imre Kaloz <kaloz@openwrt.org>, 
	Eric Dumazet <edumazet@google.com>, Eric Dumazet <eric.dumazet@gmail.com>, 
	Eric Dumazet <edumazet@kernel.org>, Pravin B Shelar <pshelar@nicira.com>, 
	Allison Henderson <allison.henderson@oracle.com>, Joel Granados <joel.granados@kernel.org>, 
	Joel Granados <joel.granados@joelgranados.com>, Harald Hoyer <harald@hoyer.xyz>, 
	Harald Hoyer <harald@harald-hoyer.de>, Harald Hoyer <harald@redhat.com>, 
	Bothersome Borer <bothersome-borer@kernel.org>, Confounding Cockroach <confounding-cockroach@kernel.org>, 
	Frank Rowand <key_111017@frowand.com>, Frank Rowand <frowand@gmail.com>, 
	Frank Rowand <frank.rowand@sonymobile.com>, Frank Rowand <frowand.list@gmail.com>, 
	Frank Rowand <frank@frowand.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <hd2ahm4vhilzz3yuus63v3cbpf7zgxrl6uwtarjyjt72yxogt6@h6ytbjcygbev>
References: <CGME20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80@eucas1p1.samsung.com>
 <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gz2szxffd27aajny"
Content-Disposition: inline
In-Reply-To: <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>


--gz2szxffd27aajny
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
MIME-Version: 1.0

Hello Joel,

On Tue, Aug 05, 2025 at 06:42:25PM +0200, Joel Granados wrote:
> On Tue, Aug 05, 2025 at 09:59:01AM +0200, Uwe Kleine-K=F6nig wrote:
> >   Remove expired signing subkey of Joel Granados
>=20
> Thanks for this. I had update my signing key but forgot to remove the
> expired one. I use my updated Signing key that expires in 2027, so all
> good from my side.

Maybe I state the obvious, but to maybe save you some trouble: You have
to revoke the subkey if you want to get rid of it; not delete it. I
didn't test, but I guess after the patch the subkey will be added back
on the next keyserver sync. The same would happen to you.

Best regards
Uwe

--gz2szxffd27aajny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmiScFAACgkQj4D7WH0S
/k5W4wf+PGLV2XQScob0ND7Xo+d/swBpOaV3iwm9S6n/QKdh7lN5guCbFCXhijrB
+zInEEaj+2jkE/kA8UswWiEJsvUId8FLPy8Oq92u5UZ5saNuFI56EYIEdy3hf2f7
wrScKgZzMczIC5OLuULhgqQL1ugVMgbW4TP78ETVXxDL+JDdGimZ/lmss/oLbcm9
Cf5ZogvBBece523s0VzW601pziasGDH0GIx3jC0M3E8XIEhY5WLKqmJ/iC0SrPLf
C48IoQtp2TQXJacXHPb+IxlNdXY30qsLnu1eNCh8JWk8qkv/22JbPC56HR83214g
rQGYNL21iJNpzKT5TYcMgvQ8EKzTRw==
=Sjif
-----END PGP SIGNATURE-----

--gz2szxffd27aajny--
