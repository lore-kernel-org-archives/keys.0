Received: from mail-wm2-f13.google.com (mail-wm2-f13.google.com [74.125.225.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A0442FCE
	for <keys@linux.kernel.org>; Wed, 16 Sep 2026 20:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789589351; cv=none; b=G1glF2fTmiMtsHNfaVj6U53iITvFTL32PGECTNqrR7gI3P5AFYqZl1STOXlv7vMafe8DR4jqN8gcQiqFS8SF36ZL4iKAAbWnzHHMDQBP6yfgvF/Ibn1lI4S9f1yk2ZqDrN/nAP9lDcBoH7lms8nUo7iIymZE5DpE7epuKB3hgxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789589351; c=relaxed/simple;
	bh=cFGwofezGppTk4+QpekUyFbFncV6/DaNfzT4sgkp0Js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DdNnbeuy6klXY7hvFulkgZKYaKlRMXKH6g3xEFsbN6m7kftRsHcJRS8goaTGqq/VLo0uiqpeUw18DIYOYvAI8707sND+07rLC8eQ3vL0iU/lwc/VRfOsoTWlwPH4odQDel3qovveWjAEg264Sjk/qiGbd9anZjOJS5bbOfISPSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=L7QjAfKs; arc=none smtp.client-ip=74.125.225.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="L7QjAfKs"
Received: by mail-wm2-f13.google.com with SMTP id 5b1f17b1804b1-49e6c0fce17so892725e9.1
        for <keys@linux.kernel.org>; Wed, 16 Sep 2026 13:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789589340; x=1790194140; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cFGwofezGppTk4+QpekUyFbFncV6/DaNfzT4sgkp0Js=;
        b=L7QjAfKs6ruq8XHGMmAhuU+V/NWEurXTNgLyC2o4xsKxRDOrWaFqVEcr5O289YbjJA
         9/9Uc9eQmtFQdyUID5MqtTqsWkFLZJpGxuPRLQc9imdTDi+astVIlOU6emRjEDIHz9Vw
         t3Ss+ejetiDvCD/VeAcCOjdxBiZmuwk7sKyynvZmdsqSasGuF+5O+tsrLxFc7BgMVACH
         6oNrkDjLLhwkPlME5/1cxAXw5nTUN2X3uYQcb4gwSv6Nlt3bYTlyssJjrssH13LyOXdL
         eAPkQFl1kyr5iOP50ezgRJcxpckkQrfC1GGKHn3oaZLamEtTtbFWeDCBZeG7q65pJsOz
         eQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789589340; x=1790194140;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cFGwofezGppTk4+QpekUyFbFncV6/DaNfzT4sgkp0Js=;
        b=y6kN1oUhrUnpbx2xiI9ytXTpW/cjcIuzVJez6QLMpK7cYF5UIUsEYOl9OtBGfpsCJX
         am0CZQdnLZiepnUHsrdwflrimORkVPaAm4Gpaz/0tP9kqD/6kv3M555JPgjkROkVaQ0B
         aI1AC+9rMYdy7f7D8Ol31wKxoCQmyZRnvwLfLGQ0KcFwXa04x7xKsIWammDcU3PrVYeC
         lbpjuiDspuLe3CLcZa8NBblPZSh+e+3Gq5Xh9xoived08Omqh5ayEphtYg2Aj2+jC5Ax
         n3/NUlvPTLd6K8T7MKmyDFoQ0TUPM/ilRJfciyhbHKTZfS4rhaENefMxHSbeLv19oQh3
         VxMw==
X-Gm-Message-State: AFuF++nDI059gU18z6wN0TT53ga1PWbrKewKY7ZOTbsHE3HEDvnjH1TY
	JH7t4Ysla4+SrK7APuXo0L91kQQEBxiQaFazZkLkXelK1Thihtrkjl0PyCP21L2fLbXD/KUxOQw
	1qfk0
X-Gm-Gg: AYBFou1hWTx29g0oFQQSLnw6wtWqKGs0tcthz53SMg5bujPFFLVByoHNat6BZs+dyEQ
	LLfHX05l67alNcRM4TY2+/6waUNtCCr4jYzb75ZLvqYcmyPDsfx6OvYDrpLNwdfVDDBD6OQbzWv
	Jf1+PNjQEHh/eIwVLKar2kdOv4tRpjZ3KTD0CknhTLbuBowoGNqPivNZeZ2gfeS1veq99dBdNg5
	UJXrH9yGUCVfkIPMI+UEPlHOLFZD9QylSuKB70VKWJQGyE/ITXWa4w7fcG0FV7aADeZdZfZeGh8
	nYfkzeAQUisGiQSjADz898GAxDwgjllrRaRMqP+JEjGQowtjOKtNPCWeJ3CrvwRIuDDkIR3yWiX
	bxglS0Y5OdO3YUFK9s2u98Zasjc/9kHt+TjlCw/cbUp/BllPAPVY9AhkMohGMIlhHcEeO82HI3y
	GGZJyHjn/BvDT5cfbvaEgcBfT50gbnQ5DtOb6EpypgvWlM8TgkkH992yOSJ6Qa+/Rx2IuK9amMi
	kO+
X-Received: by 2002:a05:600c:4e86:b0:49d:15b9:2a2a with SMTP id 5b1f17b1804b1-49eb72f3d08mr48227435e9.10.1789589340403;
        Wed, 16 Sep 2026 13:09:00 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49fbd776e1dsm3053385e9.1.2026.09.16.13.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 13:08:59 -0700 (PDT)
Date: Wed, 16 Sep 2026 22:08:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New PGP key signatures for Rafael Wysocki
Message-ID: <aqr3LzDAxB13dmhy@monoceros>
References: <CAJZ5v0gDj_BJ05d9KJHWrsT23j+ogkPSYCZcohc9Y1CviLssLA@mail.gmail.com>
 <aqrVNx2XrMCqJlcE@monoceros>
 <CAJZ5v0hYs8EHr_ox657O0rBtfBEywahT+ZgdhEWGT-bU5X-qdg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p3zwydeeaajbvz6w"
Content-Disposition: inline
In-Reply-To: <CAJZ5v0hYs8EHr_ox657O0rBtfBEywahT+ZgdhEWGT-bU5X-qdg@mail.gmail.com>


--p3zwydeeaajbvz6w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: New PGP key signatures for Rafael Wysocki
MIME-Version: 1.0

Hello Rafael,

On Wed, Sep 16, 2026 at 07:58:25PM +0200, Rafael J. Wysocki (Intel) wrote:
> On Wed, Sep 16, 2026 at 7:51=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> > If you're going to LPC/OSSE, you can consider adding new UIDs without
> > these comments and participate in the PGP keysigning[1] there, to get
> > some trust on the new UIDs.
> >
> > [1] https://lore.kernel.org/all/lpcosse2026-keysigning@baylibre.com/
>=20
> I'm going to take part in this, so do I still need to send the key to
> you, or can you just add this new key of mine to the list?

I can take it from here.

Best regards
Uwe

--p3zwydeeaajbvz6w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqq91YACgkQj4D7WH0S
/k79VAf/T2EJ4mJ64UrxUvQvOvrcSK+Yjipiiii6EtrTK/Dx2HA49a1yyVqHwqnw
PDK7W52p/xunYwEy+tCoPTlWyxIaJh+p/Wkl68/AXpevvrz0/OpUcqutlNV/JCi1
7XWb+5luVfqvfLmovgJE02vIzXZXsEy2DGPeseU2KtS1JE8FPhV86bsSUNT0bC+X
vzLPk0ZgLIKm4P8+n/KwhsFnvYOCvFmrRBtc9nM6m5I+G3hU+S8bW79tzr/skk+r
BvCO3pG9Hj8X+dIags+XNpPl01hpK+dZ0AP8XrqqiGkyrF+5RghTWyzo+RnvkJrA
FzzdggYzR9qeKkp3QG1Q1XxfcfuJZg==
=D6dd
-----END PGP SIGNATURE-----

--p3zwydeeaajbvz6w--
