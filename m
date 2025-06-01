Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0627239E9F
	for <keys@linux.kernel.org>; Sun,  1 Jun 2025 23:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748819025; cv=none; b=YG9PaaMNfxEUJyRvmGE9KKmponHqI1rItRH/E+fxZxNk2tl/kw6wvyi19vF4gs8S5lo/O8SV0TUkhlmJeDRj9zbu6nLg5uzE9O3XyxpWV7Pwn5WkGE8ouS92+MGR1+CPIm0fiIayd5agzj/BzloSWmGNWcVZ1izgaowMeOf8+/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748819025; c=relaxed/simple;
	bh=xtVzpR4bxn8WU1KlYHgpd4ebZyZgB4c2e2rZlpjfhGc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=CnRngquazvjwVOknGkCOKFxppyOdIiWTd9cpiuBmCWRJJ2wUMTV7jorbWWfVEI86L/lnghOHX8hzxqzCr1bLc6KayhkwnKSgGNhLp4rGYarhBqXK3UDPks5NRplg5X6i6RnFozeOJfx+rlsmw+0W2c0aLrv5UeGjLEO4L1UkkiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=FX91R8fz; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="FX91R8fz"
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2349f096605so46747075ad.3
        for <keys@linux.kernel.org>; Sun, 01 Jun 2025 16:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1748819022; x=1749423822; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xtVzpR4bxn8WU1KlYHgpd4ebZyZgB4c2e2rZlpjfhGc=;
        b=FX91R8fzyQDagCsbCyCOxiYPuyn2NreZRqd6T1ToH67Gyxv6vOtqBb0sN82STr9pOo
         5eob0v0pRmZlsI2tlTn2GW5CRcaSxSxUn8ucjjNzQ5m1nijLR7jVBgejJR88Xb7bDJ4X
         LcoiPORTAUNZsxHNcKb0McKQN0Bg0O8K+a1WN8WwoNvNxpYmVv0If2Y2pYvd6hEJ9thG
         yqKx7DylBWkzuZlqdMJ2To5/d/B/TIpNMhfatvU8EbevH22g2AOU5oOLOgYVPnI06/Tq
         JAYGl3Luhyj5yiMR/xtBd4BrVLplCZvqjiK+5I9f9B2pejPXzF9Iqdc22rikJdJ+zlxa
         qT7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748819022; x=1749423822;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xtVzpR4bxn8WU1KlYHgpd4ebZyZgB4c2e2rZlpjfhGc=;
        b=rZXiUeQqAWD1TBc2DD9qwPpL0iNUv4WhOlp5kUWNMYF3LY44RTZSPb3aq6/JE8EGo8
         BG474fI85bEWi1/XGIbRxlMi0+igpfJni22Eje3zV0CIskNxK5t3Q91q3sUCwU7N/3Jm
         z+WeeOtcPyTUo4k4u9KKUGUADtvf3t8xpDDKpw5UWYYTNScrpMJrDcHGdFzOPO+7PB9p
         up/YQIiPOXHKHyC0/x5FsLL7Nb5Du1spa6tuEAk6gingBb7khH3hOPVnBScLYAFigooD
         rYrjyxiGbz2AfUT0KsqeJpM377rgFfCBGbLS3auo0ourtIFz2tDlZoUmIyFAwJs76E+1
         wVUg==
X-Gm-Message-State: AOJu0YzDcE4FJh8x0m3aFOuAamy+Wi94WsJLSkBZmlf2uBrq/xKJ9haJ
	dRNxFnWAVRK0u6plmIZl16VTpUVJj2GIRsi2CJLzbIuT4N1jvS0eBq8lcMHE0dFB/eqJd5zTUJJ
	NGeDVRE0=
X-Gm-Gg: ASbGnct56qLsNh6w5kam5EFlOE1dTJR5E8isnfwT/lhF69eu/8gtyJzo62tfQLkeIEX
	juBP588hqePhFgvDGVMrkWirxzoNWuIQJfcbvejh0Sb2rbsq7Tm60IXXFbfiB0C6dUA/QH+0q4r
	HVTmZUrNNoFE/u5OHKrbmaKgmGX6Gj4kVcxUFiVrXbR+YoRLdjcFIT1VfH8XATsXwg9cqdaw8vN
	PgdGpmYjPzD7WFm34g4baAY2jk7iCa2Tr9Zr/l0YwtMyNyRaTz8JaatzmTDhck/486O2s8xzyr7
	UPom2FV5/cTfGLnxkZ1d3/pE6yKM8WSt
X-Google-Smtp-Source: AGHT+IGT1zbw5yR3T0y+5Ie9Rq4FIk+mLiW62xYaYSyOPt3x0doHB2cBPEvNm4WIaw5BbIhrW03DaA==
X-Received: by 2002:a17:902:d547:b0:234:c2e7:a0fe with SMTP id d9443c01a7336-2355f782eeemr106189105ad.19.1748819022068;
        Sun, 01 Jun 2025 16:03:42 -0700 (PDT)
Received: from x1 ([97.120.245.255])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506bd9448sm59125675ad.66.2025.06.01.16.03.41
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 16:03:41 -0700 (PDT)
Date: Sun, 1 Jun 2025 16:03:40 -0700
From: Drew Fustini <drew@pdp7.com>
To: keys@linux.kernel.org
Subject: Key for Drew Fustini
Message-ID: <aDzcTHN2YneD85M3@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yMiKZO6wYAacc+pe"
Content-Disposition: inline


--yMiKZO6wYAacc+pe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi, I have attached my GPG key: 1B6F948213EA489734F3997035D5CD577C1E6010

Thank you,
Drew

--yMiKZO6wYAacc+pe
Content-Type: application/pgp-keys
Content-Disposition: attachment; filename="drew-fustini.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
K3GsUMMKEQ==
=Pn+U
-----END PGP PUBLIC KEY BLOCK-----

--yMiKZO6wYAacc+pe--
