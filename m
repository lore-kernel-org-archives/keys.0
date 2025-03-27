Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD217A2EB
	for <keys@linux.kernel.org>; Thu, 27 Mar 2025 08:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743064312; cv=none; b=r7/Mo2ei81+qWcfPvCkIRG7e50TR/+Qg2/+qoYU03o0ZPD0esa2jaRgX43I3sfcalut2McqdG09/YrH+R//veAhKA5MK4ZtPPRy4zWZZ2rmsvaalRZ76JXYc/18PTd+40azy4P3JBoo5FteS/3KdZEysAUCJHBC+Vy366oCd+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743064312; c=relaxed/simple;
	bh=aWqiMPJCAAHCAnhlS+Xk1UEf9HhCO2G6tyJnp1UZjFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZQaQk6OOjKiLdmfzDrLrr+Sda6bFErCx9CfBve28lrvDjDuHC+4reoe+BKMLK0FiAlTV7O+XGkyPayVkoRSVly+ywtBeGIejKw0LW+IlIFyZcAyUvssfth/x2nJmDxW9C8EmEHmiSx8EY91QBD4QFZKIWkGhBXnpeoaeVlRrekI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=D4uzWPV8; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="D4uzWPV8"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4393dc02b78so4531325e9.3
        for <keys@linux.kernel.org>; Thu, 27 Mar 2025 01:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743064307; x=1743669107; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aWqiMPJCAAHCAnhlS+Xk1UEf9HhCO2G6tyJnp1UZjFo=;
        b=D4uzWPV8snnRzmWgVgoj5SZv7fqUZZL2PBe9R6uaiKm+VYNUPxC4qxUgaSQhjZa5rB
         EuPjPfLrs+jeh4zkd4MISPhWBa6+p63HIVkuMtpEzhwZFDpn3hCs/KgLHOSAiIsYjH2X
         ji4Woh3XbBM+zi0xlgr2jWeAa57IaPUT93Xqct8cIPQDFHp3RRFrD0Kq9HK85Fvb+4PP
         fQzxHV33KcYZtq9xHbEfp6i2DKZntpYbH0GPze2yhU+3L2iuRAnc0tFg8DbuL1pkHPEY
         m0PPF5XyfHG70qjqpDzhNsvaQv4a8oZKvY2ocaBjzGShPHueEO8Wky8CTIiCoXWRABIh
         B/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743064307; x=1743669107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aWqiMPJCAAHCAnhlS+Xk1UEf9HhCO2G6tyJnp1UZjFo=;
        b=eewZbboxkFoauC8DXWBeW6quN9dDSPP3mtxxR2t/6jVyDF1w9qYfKSGVP8PNQyB83O
         bi0SY88X/Bq5P+m8wPoj8KQv3Hh33OOslE4tN+RLdG8woftKb6nqJmjXIjoxPu1PUeVH
         vEUz+TnECPLPw19bWuhMpeAdnZDX/qKqJv026ZwnOwlkMcNjtkthDo+u3GX8hiTVgD2l
         4VtEhJ7XevBUE0jtLVE5WNBl7hoiI/Kxt1/+orXIWu0SAeumQWqEE1JONdprYwHCnjXQ
         ud9IK/suHxHFJR5umw/lzP8YHaEpYmABgFf6/b5koZx3h96/0sn23TjRAW1a1/AByiaw
         GoeA==
X-Gm-Message-State: AOJu0YwvEMyaoHgHxE+5L0lWENP0k6j7WPQxy+OOJSx8Otv4nFYmxNe0
	+15koE3ayCjyuAesK+uLobIB8/M19+Z7sQrQFj2GGjS3nVW77ioTtpw6p06GdBQ=
X-Gm-Gg: ASbGncvk+logO5uy9atNaLsE3b1itVeCinfx070/+sGN4ErW4XSgB3mZTAym8DCURjd
	DSX6A5yjv+uD93oxKwqzmAo+IkKftdOc6F91N1WWwrNfKtJO00AVXGTUg/Cm2PDpNAcq70QH/UH
	iKxRJk65BINAAnVhKmPP/BLcj7EadzXzUYV0tKTt7J3tT+o3gFlGS8pz/L1Gv/W1ZrGpE9vvHwO
	yQdcCzfZoph8eNBDKaiDF+XZew2pUHPUmCNPyTcJgEznfIDlDVGRutxqbuKmW863xTV8p/hEoZZ
	h0majP5ljLixpLITwKk1lx2xxl8Ja/UxTujP00dKNthaAp6xDD2glcpWYJjM3wF+cMXtdN5nnzj
	FKhIS07bwrIa4W5ZkLyaFSA==
X-Google-Smtp-Source: AGHT+IHhpbeKKegistPwk59lJgkzDrSm0lPBfgYK5Uxq7ku9tqlRQOqNxx53L7PGx4dONfXMRi4KVA==
X-Received: by 2002:a05:600c:1ca2:b0:43c:fe15:41e1 with SMTP id 5b1f17b1804b1-43d84f5f598mr23031465e9.4.1743064307094;
        Thu, 27 Mar 2025 01:31:47 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d7ae6a319sm30002835e9.0.2025.03.27.01.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 01:31:45 -0700 (PDT)
Date: Thu, 27 Mar 2025 09:31:43 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: mkorpershoek@kernel.org
Message-ID: <ctccjnltkfguihfuwxrqzfphiznkpwqwxi7wo7yba44qzpuxtq@s2veifw4qqtj>
References: <8734f0umqd.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6oq2gav7cg6lwtmo"
Content-Disposition: inline
In-Reply-To: <8734f0umqd.fsf@baylibre.com>


--6oq2gav7cg6lwtmo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: mkorpershoek@kernel.org
MIME-Version: 1.0

Hello Mattijs,

On Wed, Mar 26, 2025 at 11:09:46AM +0100, Mattijs Korpershoek wrote:
> Looking at [1], it seems that my kernel.org uid was not added.

Just a quick FYI: I think this is quite normal. Part of the process to
get your kernel.org account is to provide your PGP key and that then
goes into the kernel-pgpkeys repo. Of course at the time when you
provide it, you don't own the kernel.org address yet, so unless you
added an UID for it anyhow before sending it to the kernel helpdesk,
it's not surprising that this UID is initially missing.

Best regards
Uwe

--6oq2gav7cg6lwtmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmflDO0ACgkQj4D7WH0S
/k7kkQf+L0jluoCL2dhNxisgaJ5by2t2sKixrpaEm9ixoIPi3O3bAdoUN1aJpmBc
eJpZMkfSc8HcSUIK9OTY3w8pI9lEpSsa5ayylGF5GRYPXGXL+GB1vwheAbCFX9Ns
ugy7rgEZjMyjPkYv68zX8zXmRTlQc+JPBAZ5dURadS3cYhAoKJCiZ0qVKJqKWFYU
0C2cuymhh2MOYPXbqOxikdyqzvu99ABqtUtcpUVbbKw3il7q8/+TeI2lZduUcHah
sS2LbDwoOorSsamACNTdCegbdW3OO7JnLJDn67RRfo6TyD3oA5ecetCPUo2wimCu
N1akRE7r4Gfi4RocswyVteImi7jDSQ==
=Oyrb
-----END PGP SIGNATURE-----

--6oq2gav7cg6lwtmo--
