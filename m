Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.47
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793122090;
	b=PsYOTxiYTZibDtVGCYDo67hKljH8slpgEu5HGtzoa3muepVb3d5RGqnZrD53OSyt+tcD
	 7bHIy/KxOQyh4v9GCzWFs3AlWmkYWCMcPJYNve6z/VM4aOKQVKscEYL74nsqxQIYw8ESQ
	 nGMkKwvTAh683aaIXfFYrdqYG8EXKU82eZ6Qc4TsBvQ0rB2LXdUvVGWXVoTKHKVtJgXlU
	 AP4nB3dLB+gSjo6R987KgEclMy/2cqGHRtfn/uNuIye2Uo0TwGfsOPGJVoZtF58JPGY/2
	 kmudfL78i3QnCodNoUXULgjQpMlC+PCynlE67pBHpUWC3J2Mefosj0YA2XDsmFVsfmA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793122090;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=kQvdZRt502M9cqBJ/gUOFJvGgFJ7OBJ6bFeUkFpJKqg=;
	b=4AG/0ud7gs6g3KhediIj1CUGna8grpFoKY6er0tBEahWp4MW5/xYJXV8OMytg12MwxbL
	 fy2MFUgY0MisOmJ2DZTk7k6Ez9nUNqU0c31b6WdyOkY6f+WEirkQpyJve1Y1F+pT5zeX8
	 +YH0VGFHE6xQwv16/6vj2rI8R6cJdzqthUyL4Xi9HkHt2mOFSDvR9EakV8OpW2QYk/bbV
	 GYUqI2NzW+XN8UlGCousjYaBCbmg2D/fz87otnD1/2PzMEdaj50Re+mVZulZq6emig/M1
	 kr5evL7w6bughnzbhC9ijBhCzlnks+ARz/LbgAvA9H2sSHPR3891ky8cFDTuWYSWezA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=TK7mCQJx;
	arc=none smtp.remote-ip=209.85.128.47
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00428606A31D
	for <keys@linux.kernel.org>; Tue, 27 Oct 2026 17:28:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 00428606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=TK7mCQJx
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a2167bd087so838105e9.3
        for <keys@linux.kernel.org>; Tue, 27 Oct 2026 10:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793122087; x=1793726887; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kQvdZRt502M9cqBJ/gUOFJvGgFJ7OBJ6bFeUkFpJKqg=;
        b=TK7mCQJxQOCYjVyowjVEM+egAgfZ0fj6cS7b0xNGDuHMqaZYzcpBGcZbr4Q3NeMZ4r
         +g5XCVkFQ/kvj1snAuEKiLoKLzG18nTBkg0ghgJZZJvvnaItc6gJA3wL+AnA1QDGF/dM
         y0LOtttMsMkrKEP96Yf4pGRCFbEdjgkwtGyU/Shn53C5gX7fAZWn8iXz7vJ9NPxzcq8W
         l8K68qgu+ZfcKEuKbqBVP/OZeLARRwUnDO26Peb7hwmsKIZ2n63djSqeoJL22xiYHmM8
         0+csx5/5rVyqoA5Z+PgGyQjJCkfDlQSyPhB95RmD2DVqIm7GTOQvRGkdtdzR+wlmb5jD
         d88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793122087; x=1793726887;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kQvdZRt502M9cqBJ/gUOFJvGgFJ7OBJ6bFeUkFpJKqg=;
        b=apUbcOqXhP5OWYHaLMXRs6NkT6F9rShVYhcle/LbSj+hfhjskmEamvsWvgTX1Vrx3Z
         f+UcGKcEMN6/4JidKSO1fvxGJicUcY/qEf77bDJg+oVAuAWBH+t6PXtM/6Tk/TRbWyFx
         pi1doxW97S8gYTuxSW0lea9r1wyiUyhkEMzNXW5bMlJIyNhPNU8TzpD3MRPZVm5DlC9C
         iWk1S0ywmEthAIX5sjHCfShQkuxNcZPrwmepavQ+WIuei08x9gpPZIiLAEY3J4A9R9yd
         mXd0JHgouVe0WVU3Gk9Ub5BCT3T9bR92vsl/xfBKLm0NFZUrjolvQW7qjjyg+TTOqVCh
         YS9Q==
X-Gm-Message-State: AFq9FYIsO3anjHd3rFQd0TtX1IHMlAMwoj8i+IDrFNhgIP2mZib94ttg
	MOcNU27r7fY1QXQ7ZLuL5/eSRPEt6PiyZatbS2oTdkfwi8drpX/EHW7f8PL9KJdS0JM=
X-Gm-Gg: AYBFou2pCdSL7yJYZYpQ9vfBeldMCRYiTPaPZE/m+RJe2f2uXUqbEMFPd7/oED7AWSq
	X/aHdudmfmY1dUjhrtk6cGwPfZyvuMaex7/Zg6HJUhOZl0c6OdbFzsSlPugOufNo8YENBRbB/fI
	ayJGEI3F8d4x9wNJ2ctjLU1ks2Z9ek/hmzoNEPhrQCoi2O4iAS5hIqnnAzJLG2M7q7xtSAZSkdi
	XIv1JxHEgyY9C5p7txpRohsZHxj8K/WL9RRZZAUY8TKwsX9WpyVYNUOUi/5PWjOe/u3Rfci7s4T
	uuA8S9MESxJIu5JYq2IeyOuFWoP5yV6hb0Yq74Nqbmp907kCA6+1kdeif7MOFlGkSdCO97jqFra
	F0dAA/QNGcr1wfA+fCpKQTwhNfSALaFirc4JDiNQKkqtX50VQenryF5vHhNYkONZNDR88JENb5f
	8gTATJLYdf+OoWYYDHwUMPqeafrtQqIblDs+U3/W+arx5RG/ZxQ91z9Ojiam+hRXA6+OwQNli+R
	hwRV84qt58YrCzv7jfKiNn1JVqVB549HUoKceqnhR9112+J2pZTE6lHN16K3akqx2nrtOUgobd0
	ckYJJp0NS43ZO289Zr0X9u1xKT17591SXAjA9bVYy7w=
X-Received: by 2002:a05:600c:4745:b0:4a1:cf60:dcc3 with SMTP id 5b1f17b1804b1-4a35acbf3bbmr199113945e9.29.1793122087310;
        Tue, 27 Oct 2026 10:28:07 -0700 (PDT)
Received: from localhost (p200300f65f19a90461358920bbb0c5ad.dip0.t-ipconnect.de. [2003:f6:5f19:a904:6135:8920:bbb0:c5ad])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a92fce7081sm4294845e9.3.2026.10.27.10.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 10:28:06 -0700 (PDT)
Date: Tue, 27 Oct 2026 18:28:04 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Julian Braha <julianbraha@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Key submission for julianbraha@gmail.com
Message-ID: <auDe105WBaFuyp7N@monoceros>
References: <bb0b6939-d353-4703-9841-26dcc0491872@gmail.com>
 <bb0b6939-d353-4703-9841-26dcc0491872@gmail.com>
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
	protocol="application/pgp-signature"; boundary="3vvsojjuu2hzecgl"
Content-Disposition: inline
In-Reply-To: <bb0b6939-d353-4703-9841-26dcc0491872@gmail.com>
 <bb0b6939-d353-4703-9841-26dcc0491872@gmail.com>


--3vvsojjuu2hzecgl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Key submission for julianbraha@gmail.com
MIME-Version: 1.0

Hello,

On Tue, Oct 27, 2026 at 04:59:40PM +0000, Julian Braha wrote:
> Hi, I have attached my GPG key: DEF5E89D3A6C6B7C39450AA90664101D2FC252D1
>=20
> I've also uploaded it to keys.openpgp.org and keyserver.ubuntu.com

That looks good. It has signatures by several guys in the keyring and
passes the sq linter checks.

Best regards
Uwe

--3vvsojjuu2hzecgl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrg3yIACgkQj4D7WH0S
/k7iGQf/QX5gPgXfouf4SOYxYWMnOIwVRXxRjgKWpi5VTl77yWlKiLVVPPhtnBmR
6QllhdVX3efrb0++KhTB2Rb6D3Frh/drI1pRTLiKWFHPExhgO7Cez/iq5tadXjFN
o/sDNnEjrSmoF8Os5uIsFV3L/ssn7iEUY6x+xCt7iNTcIEM6P6jY59skF6d+q6p7
wp7wNzNHsFPAYct6LU3BqwR4+kBUVNtuuUjRc4KOV3zE5CAZJ0NvZV8g8BcZ3iLU
lH2qlt/3L5wTvplNjKfmVipQEFSfRWWfVagOoAkyuAUVwqr4NNGUxpxeI/1Bzpeg
/zgMKKfZ+Oe96eKHixmkwsElwybwNw==
=EyzI
-----END PGP SIGNATURE-----

--3vvsojjuu2hzecgl--
