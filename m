Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.52
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792744597;
	b=Y43eDd+qHDi7MwOm+0i5cJskbDQSE9CQEZBG71MgEz8UUa8wgaGZhnIyhGPtbKVUo2id
	 ZFceni0gDGAhtCkodYeyNmm4AXreduZ2MzbiuMG5RsY2cMMuS7IyFyo0DsfllnnIGMzJP
	 Z5L5cGTdGsRWaTIKVUFOP6jh0X9NVbHvwJF4noyExyoO+TGzXgMSLc8jT+BRqv2qwrl3G
	 RDMY1PCezfmzU/niCKamcNk9HZQNmBv1YTBM6dZ8Ssc4tpKPL3Wo21mRjODm+8w2Uc6N0
	 0cgr8ggyy97Mo6btt6V1FpVWy1qY2f2Yp2v3F+NuBkpK90Zm1bPF6gsk6nQkdhbD1bA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792744597;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=ldZzv+TVqLv+Sd59LrJSmy/H9Z5b5iYjVhEAdcUCVuY=;
	b=NyBcz1E697gG0mfHKEIkxHLy9MJOnfOyg6c3//hAINUEWPDdbUljEnNoxl4V1AN3tFcd
	 K+Ctz3fJ79IYMaruDnNFwPGssRTIR5PuZ2MBBvjNnZNG+IugErTLFiwfY0YJ5XCS8RAge
	 1xasvxvZprEOsMmCuWvkYaQj6drdnhrGGacwZCc9lHs6PV7sbdv67GRoq+MNjKo0KUfNF
	 n4l1iKJdPMtVb2N/F0QB0mDH7X8xOG9K+GIZt3BMv2L2/ichRy1g56hMQ8sxx9TdisUtC
	 gIKNPxGJ5XFiWbe5QpINQ+vTbuB+zrDnDeW52V+QD7VMD66FJHBb+j9jqX8qDhcmmgA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=kFFXAHb9;
	arc=none smtp.remote-ip=209.85.128.52
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D72606A31A
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 08:36:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 53D72606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=kFFXAHb9
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4a2153c8525so2097885e9.3
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 01:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792744595; x=1793349395; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ldZzv+TVqLv+Sd59LrJSmy/H9Z5b5iYjVhEAdcUCVuY=;
        b=kFFXAHb9v6z5sS+GUEEmu0esLEJ7Y1E93MxH+sAQoMcHF+tUbA9RhBMISUYAXCQH4G
         7I6FXZ+bd/iWDawZfPY8RSLMxcgDDDsvkr1tIBm8jjPy/15HYmxehyskvVmT7m6pEXI8
         mFqBZuR+rIxx2L8OvAG3LQoVw+Ixj6dXFzlhJ27djq1SYQ9dmw6mf+LrwzgG4J9gRTG4
         g7TJMyoOy8dmdAGRfgb4FqqOkaHZs+1tQzWAYLCCiPa36iptJJ0uGt3iuCLwbZXO+nZ7
         WpKpAfgKLLD2pCvqEn+4Uq2wqh5AEYr2RV5+5xTpNmbokF8xpAe/C7F630hqJ5Z2iYUE
         0Pyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792744595; x=1793349395;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ldZzv+TVqLv+Sd59LrJSmy/H9Z5b5iYjVhEAdcUCVuY=;
        b=jR18IHNHRaG5ZQI09c7q0WdclOy3VDxQM/0LMQs40v+kBDYJ2ZKrCmwqbP0nbJx3Ae
         4ok/o1zAKbFQ6BDXsTJpMuc6lPdxtm0wB29/U4HJtseCSyFEmKSGHyOm8s2RT+HAwi8o
         5FCK52MyW9Zlqtqz1h4izNcAbBETPh9UgdyB/XHEMcmBabMyIhqDZJNGtIA09QlXSDSL
         5GfxKM1xM6Dn6jO5OdU9EUaaWVWgzDGI2FMdZWb6SzBM97R4URYON1ePYogXGufsUYC+
         Ow1k6WiswlP1afO+sHqibrCFy2GOlI8d+c7tnp8uoSZu8jseb6c0e7V46skqn9WbpRug
         lxdA==
X-Gm-Message-State: AFq9FYISAJESo3o63FPyNqGmEiPDjOxcuT3gHiZsJOV2J632cgn8XTo6
	u+uU0scKaxUS0pRD7WI1LsugWYY0q3RD8VwLA+DfwTMm3+W+00EIbre3xhbiJyeoFhs=
X-Gm-Gg: AYBFou1cmcpTm0KYGMukDR/78LqX96gvpsE/dMJYRFd9/H6vwYfEHkIGglxQOz0wBdg
	SM7xhmR8rVkhaw+ZVWxEsKU7WHzMgSVpY1j0frALjZ2DnASiAWJRHwAcECPDUP9P+yoCoVykbtj
	vH21zNYGqa15n7JL1u9lBokmsULoWKPclhUCbCtjXcpTokSNvjDq8BiBR2yp5/v1QpXCtNiy0rI
	H2GKNEgyTJlqW300SUzX3rLRlnmrFL7ntm/jpp4zTZPHyDuMZTZNUtj4V8YsovnidqBTj/SfnOB
	4yhdFaIcRA0rZAjc8DrM97yl01qlODAhPvPb1fjPXUfvf59nVqPewH8zbSj2Ue8SgoXdGdO6DmY
	jucLgqV17VuYNrHVjKLbmoIKTp0YZdUMcrvoeGZ54TUOSFucZ34rVoilMANtl368LEOZ+PJsHJo
	vhZeCL2oxUZamal1oUlLqnvP8ujZVndBmOiJuuoM6ynroDUcWXJpUMiN3F9EK1ng5Uu6ShZXhFr
	5QiRvSyEck/se5MsHW7bFFHngZsva4BmjoWUyUha4bI0bhEJUEfnEn5ycjjs5S1ct1M25ctmgSM
	aJhhKjb+UbBpo2tXYD0qIUn/tdsI3X5HrqIzU1DqF4o=
X-Received: by 2002:a05:600c:5246:b0:4a1:985b:83a9 with SMTP id 5b1f17b1804b1-4a211c789eamr27389475e9.4.1792744594715;
        Fri, 23 Oct 2026 01:36:34 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a211b899ccsm48673185e9.3.2026.10.23.01.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 01:36:33 -0700 (PDT)
Date: Fri, 23 Oct 2026 10:36:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org, Konstantin Ryabitsev <mricon@kernel.org>
Subject: Re: Updated key
Message-ID: <atsbqE8o_bPpzm3W@monoceros>
References: <20261010-quaint-prompt-barracuda-ddf9d5@quoll>
 <edc1f693-a3ba-45c2-a428-2a65842eaca5@kernel.org>
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
	protocol="application/pgp-signature"; boundary="jpx44heeszllqhm7"
Content-Disposition: inline
In-Reply-To: <edc1f693-a3ba-45c2-a428-2a65842eaca5@kernel.org>


--jpx44heeszllqhm7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key
MIME-Version: 1.0

Hello Krzysztof,

On Fri, Oct 23, 2026 at 09:17:24AM +0200, Krzysztof Kozlowski wrote:
> On 10/10/2026 13:03, Krzysztof Kozlowski wrote:
> > One UID removed, new signature
> >=20
>=20
> I don't see updates in repo related to this key update, so maybe it was
> missed. I also see a few others - like from Marek Behun and Andy
> Shevchenko - missing.

Yes, there are a few missing, I guess mostly as Konstantin didn't
process these mails since the last batch. The ones that I'm aware of
(i.e. no tight checking of other requests) can be found at

	https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/pgpkeys.git master

(commit cfaae33343f32c70b2a4e43c5d6033cf39ebe531).

Best regards
Uwe

--jpx44heeszllqhm7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbHI0ACgkQj4D7WH0S
/k54dQf/VrZ5iIK/aAaidDUy3X3OGjdgaXsit7MQnerYMefNO0uG64oWCK/GtKVB
28D2dMRQw+BnpJ2oxp6RuQ9UXLQLdLuQ8UbtmoxTbab34K3GyHmKuIBR8H4voEcN
hlSTm1rrLV4DYPKYvvxjlwNyHITAdA6Qp9ta87q3NzxqbQWzyBlnfGY3iQPpjHA5
Z4AoUV7gHgPnc8dEO80nOE3lg3/pgx4pVbprg0r4UUXF/x6eOSUvs+e+x0jI2eW3
VaYYFUj1/m+HjH51kp3lrgM1fP3TZcXSOffQHpn9iGVRlXjMPTt1Xj8h4dWnPXE+
+6SVabfJDbR+wT2Q2/EHIa4zogSaMg==
=DUE8
-----END PGP SIGNATURE-----

--jpx44heeszllqhm7--
