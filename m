Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5078717335E
	for <keys@linux.kernel.org>; Tue, 15 Oct 2024 08:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728981690; cv=none; b=VZ4mQliVzOqGZt4lz3FuDqJg/yZhir2WV9bzgACF4jD14YKjLEJZnd8jc3ybtcrs+Xh655vLi6n5IcgO9opqEGKNDcuFXSD2lidklg/P7/li5sYsYLaY2NnQHf6JWV3Wp1gwOhF/gg4w5YeUXY/HxmwDviZM3msd97dFKSKWZYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728981690; c=relaxed/simple;
	bh=zMwy9Y5LfLfyCTkmLafdCVE6uQe680wNlwb/1RDYFbw=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ozkrd3s0PxJJmbtPeEapFhiBuHcBJ9t9YHIedX8S2adyDvo08tjK28MloYrnWwd1/ylDwAEHuRnt8T6aAPXWYmit8bkiMwT2G3dodNEHe5XRXVkTn9zl+k4Z9netJrdyp+U+v1MYA3vUk951l/aH977w9Mp79ah9HKNvt6pBCCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UJhNU4Cu; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UJhNU4Cu"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5c94a7239cfso2328170a12.3
        for <keys@linux.kernel.org>; Tue, 15 Oct 2024 01:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728981685; x=1729586485; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zMwy9Y5LfLfyCTkmLafdCVE6uQe680wNlwb/1RDYFbw=;
        b=UJhNU4CumlW7sjiIH+y7ebfDhPlk3e1GS4FWeaFvbnBeAjt3dDf5CSZoJDCIS9DXGe
         jdrK5M04eH3IJw6vRSOznY3icmLbzS2zE/JPrwQ2C6oaFIddiZ1iRSWI/M3IiMM3DQDu
         b42I8m1/XXzaeluplXh9w8ye/fE6e548WRr8y/a/no+1UKNC1P2cu9OmqXGiZFBEBD3B
         rnAmkKB5Hksu2XdDdNaC7xU6feEjGFmRDMd+mN4xtQc7Sy84aqGsG+uHditYilI+foUR
         rJmFFjWURogW5zs08YV8le4r+gW5Qrrs27sqHjWoVbfyBGSzx8DHOw49wuQYhNNLZtjP
         GI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728981685; x=1729586485;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zMwy9Y5LfLfyCTkmLafdCVE6uQe680wNlwb/1RDYFbw=;
        b=eb4LCgjkVzbXNsQvwQgJK+uVkZjXFTzERbyEyzwJmbQ55wXgjE7wNtENRkWi0YGir8
         AfyZwjpHHsB/ndIDIM4eiRLj7HDt4alqmEaPL+x0OObpsPHEdkICJFxdKmV54M/DzFQl
         ZvWb5ydkh0T5akiX5qXZIKb1LdjQwo3UzdEA/XeqlxL+UX7Kwp01onNOxnQbPTQdST+t
         WV+8H1HGhkVkceDV2EQSOGNk9W0y5f2gvRzB441R9FrXgqDX7g2kyOx17mGiFnmlW9WG
         aptdXCN1SCdy2gHWcxuSGLuhfGXto7RbnafgaAL+n4OdR8I/0y3bKxLrhxiLtj1Tu2zR
         XPBA==
X-Gm-Message-State: AOJu0YzS4XWjp0+fv1Xtsl+SHQhS5MjKSKT6F+AFG7EWEyhtrh2AgcRL
	OvSGRIiZSLQotbMfl6cZCzp6rRcga6o/C92pZOqk2oCxniJQ1EkL59vktYKy9rO1VdvmgMCalti
	n
X-Google-Smtp-Source: AGHT+IFHX2lNGeMxQA9zB9+0kdRtIe/BlakKZe33lRakd9scrtfLOjpvHnN0fRI0N+QTs21jZTSP4g==
X-Received: by 2002:a05:6402:354b:b0:5c9:48df:713c with SMTP id 4fb4d7f45d1cf-5c95ac0992emr17099985a12.2.1728981685368;
        Tue, 15 Oct 2024 01:41:25 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:c75a:6d73:cead:b69a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c98d779ddcsm435210a12.73.2024.10.15.01.41.23
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 01:41:24 -0700 (PDT)
Date: Tue, 15 Oct 2024 10:41:22 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: keys@linux.kernel.org
Subject: Add my key
Message-ID: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="smgasuqiluhkxw33"
Content-Disposition: inline


--smgasuqiluhkxw33
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

please add my key to the keyring. It has one signature.

Best
Markus

--smgasuqiluhkxw33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZw4qmAAKCRAkjLTi1BWu
PyepAP90Manedv518RoPgfIE9//KA5IX//fMeJ2a74CCDMLrUwEAyms0DzmjSCsW
skLQwS+fUZF7PVm0uyEIxHQO1tnfmgk=
=cXl0
-----END PGP SIGNATURE-----

--smgasuqiluhkxw33--
