Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.45
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792743021;
	b=gTC/aifzIilCjXrzbl/2ANWj0240Ry1myL0Vkz17VYOvXIrVmyPoyClUk0Dlo07t6SBk
	 rNC5Hl3M9IFF92xQk3D0OXbH2tbHcb9S8VWJ6sgNHQjHPCzoqNGPxhuVe9M5kDBx13Gpw
	 44eaTCb8AufyuhxtFHuwv7x0wi7zgUKJ8m1Ke43uwBp5GF7pXEi1OQPmAVr14+noze4Tc
	 3zbwITndGdzK0aHp09Hv/+cRfTrjvW3WXPfLO5GmsEBzDGJzhggccoeWVrjHxYv5gXXvt
	 NV9CLT6h/E7IKsH9R41zusm8gwVkPuwEF/QCZBN1Kv9xdxjErfjihE9PPehfdrUTBtg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792743021;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=rGZ6X+acbwQQo4laLLDYakfpfyOuQrNvyZsf4tvkIb4=;
	b=foAH+lFW7ahU/0QdeeqpGIqoMw++VLuEuL7gxsAyThglJhm6ooFkXZJLzJx+ZaQFF92i
	 QW/gHwDBeUB0Z54FCH1ftXPZoZ2iB78neDPUqZ11kXATcc5gu+JqpOaEyOsXYq7Gnsn4V
	 IXEsBxATALd3KeVveAN4ZA0MHaLUps5qxvHBROyn7dEkxhzBBDaFH/itiBBuqK6TQBtfl
	 XFKFuFofUCL0ZBQa0kmdpXM8Z8CUAkCpcdHl3va3xZ36M9gJeNN+q0R3TRCei/D6rLqKZ
	 TQMTSG7xGGWPv0FHijy1SEVaXs30yJU48sdI+w6oRLXdjimyoHGeWxUGjFm2s/Wqofw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=hAumFFH5;
	arc=none smtp.remote-ip=209.85.128.45
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247D1606A31A
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 08:10:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 247D1606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=hAumFFH5
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-49d05d51553so3900355e9.2
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 01:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792743018; x=1793347818; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rGZ6X+acbwQQo4laLLDYakfpfyOuQrNvyZsf4tvkIb4=;
        b=hAumFFH5HMoYpBlZLayAsENUlr14qHmvwXhqETNM1ZcO6c2DnQfP4lUua4+2Q3JfRf
         BX9RyhYy9rXl36ba7/z8QhEvKwrgE0VLoo7zVQccNGHTKuhPsNk14wqarGGzEYs3CFbw
         9FQFSIXmxZaDUyHe+2ibKpP8DGSJKSiRqeQf4CXfPuE1/8cD3rqy4tiyuJhJKKFr08rc
         lztUjDoDHVOn/Ilt9OKLrkgao7KjdpF2z3zw7PtagrhynepaWcAOtW1q1iT0RayRFEyO
         ddCcocOxbgdWCCkz8Ea0MLBJ/inPiwe5Z+H+ptwu3Cx/L/l7at5VaCUxya11eL1CBxO0
         WmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792743018; x=1793347818;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rGZ6X+acbwQQo4laLLDYakfpfyOuQrNvyZsf4tvkIb4=;
        b=CWXWr8aDN8KHRxNIRXEJb2qViKsLf+IaOP0sX83mhPJZUWAlOh8pQHXtz7CDVD/PNL
         0Q7QERnYPb36AY8FLnRfr4GklgYiJqMBQWISUviU66exycE+HKmI4IgbSiA1kZYaEwiz
         iSw0q+xeSfZnH1MXFkPBToKH0+tJouzXk9IwmLNyVi61hbiOZSmrOZLE3MsxAVtHnJRT
         Vq0/EOt15eH6QQGP9zcKY/JbN32Fz6JCsV45n2AqTYmYwlI9j48Y5cesJSmUm07e+t5Y
         JQoNXB0VXAMMOiQ9M6RiJUTxrl/7LOJP9U8eRkDqQdm43snp5ty/pvIxrKc4pcZSA3AH
         2wnw==
X-Gm-Message-State: AFq9FYIMjnXIDFvwTZD3U6Gg6FxOdMqXoljVkFu3bUFTKCf9WiU4eyXI
	2NbJU/1MtlogAt6jRFCtfDMIxBgWpYekD+nk1xqRAGpcj0nvef3YN95bUC1w3b70BOTKy7DVozU
	nlaI1qAo=
X-Gm-Gg: AYBFou2NCXe7p9CoqIIu4ZKDIbd8Z4TKxmj5N2Br3lzXxUS5acm8CFEUOnGwK7zQYO0
	2bEhL8cm5+UAy57Ogt7difLpzQf9Tlpk+qknsKMHaN2+l7lqvl33ad1lHNchWJVaxP8SBksId8A
	TeRF3P9bik0FxueT/voHypQmN/nfeKxJ29qC92JEl1OlLgPWTc74b26aq1fAKUaoUBMLkhSXmji
	rNHXwXq2lg5Ki3+u6NY+yvL+yhJnKKIwBavuwdbI6bpRk6liYjjkurgEUcbLh/WdkWIopIza0DW
	6BUN6nlaHsepQZYGwtZVI+M3uAZ6UxuRdB4UYACt2IWuy9yLjZ5LbzXPZkuJGYyqqbdxHtwUUoo
	rEyBZKvRZmOsr9LJuFs+4xrfPXwB2q1CIypfcEkc1F6XUu8WPGSpJ7hqAd+B0LX0ShgmyIAxPqj
	wbs9GvsYdYkxtxs+/bN4knr+mDmsM0evNvo1bUm8dCVLWuT++q+ZfEInuvyoLMLzRe7Zy12knkd
	1YUAQ/xDk7Cz7vJKBstDKGtXk87pbew0Yg4R705WcwQM2zm9dhN+7UAAb+8ZN7gPd0xO4f2c4tn
	iQvArRYrbMhRj9qJWySJPCS4nQ4UyQ11IoEyidP0hss=
X-Received: by 2002:a05:600c:6099:b0:4a1:d483:559b with SMTP id 5b1f17b1804b1-4a211cb4620mr23280405e9.24.1792743018334;
        Fri, 23 Oct 2026 01:10:18 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a2153da673sm23243185e9.2.2026.10.23.01.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 01:10:17 -0700 (PDT)
Date: Fri, 23 Oct 2026 10:10:15 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: update for 26BCFA05FCF60E4C.asc
Message-ID: <atsVsPaxe_3Qkt9v@monoceros>
References: <aqv-f7SD0jxau6Xq@solitude>
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
	protocol="application/pgp-signature"; boundary="vx73nofcvo27np2u"
Content-Disposition: inline
In-Reply-To: <aqv-f7SD0jxau6Xq@solitude>


--vx73nofcvo27np2u
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: update for 26BCFA05FCF60E4C.asc
MIME-Version: 1.0

On Thu, Sep 17, 2026 at 04:52:36PM +0200, Marek Beh=FAn wrote:
> update for my expired key 26BCFA05FCF60E4C.asc.
> Expiration date set to 2 years from now.

As unapplied changes from the list were mentioned in another thread on
the keys list: While the changes from this mail were not applied
explicitly, they were part of 9ace7cb9c075 ("Update a few keys from
keyservers").

Best regards
Uwe

--vx73nofcvo27np2u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbFmQACgkQj4D7WH0S
/k6n7AgAs07WiaPFf6DNe3GmXpaPEcvPADVXNV/DtSoeFJQjZRVCfbm11lg331OV
jx1QChsSMONxXJHWmul57janFEby2EVeowJfRHlB8kGewBMPUTXbZsG5IEvsFO0U
Y8NmjdrH2FR84PDpVblIiB6OQzqriAgM6yXmr1LQXdbR0XBeozxmSe5Jw+9+KOsH
TWREFi8zRWLF8lmtElNHM696riqlnckibjfP2S3e8JeNxWEkEZ2BsI7+NLVwKjaL
SljRKMMiTYb6+/C8QJOO/oqacjlbQS/GwKPwruy90EZWg6kjl13Z38BYA+dJFhY6
bU8j14mmVz5mL9z/rPUnEgBYhPuhXA==
=Dwu4
-----END PGP SIGNATURE-----

--vx73nofcvo27np2u--
