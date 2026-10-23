Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.45
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792746774;
	b=tUQssljq5m5PQAkj7zwhWqaXyl3BrNPqMc0BAw1drluaSkt10FJQqpvxazMTyLJw3PcK
	 Jk0oE3OLfKozLhrsCd7JpaSigRsEUdioi2/xuQaKH7JcMXdUQd6K8wzfK7UTqePEkH0Z/
	 Vbu9JEOqKa7pOJBuqVyrUe8KiBRSjSANTScHndBcWcE58ss8BBZk3zsWr6lcnsmcv1Aj+
	 OkCT85hltAWHnTpSmRe20uwzSgf6GxNkmqQ2CeYE2CmxaBetE4npRH/VuqVWoDTwsz1Kt
	 iGmkSIlkhiK3lV0QJhm3EE0wlYmmN/ZH23B+xMEIjchkrqNhKPBcmYjRWR38gZTsBLA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792746774;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=x09HZJcXbhukFFa7zcL7tm3Tge2zJkCXK9Nik3vx+pk=;
	b=Th01FatalrJkZjLcqS2DobPoxhmmL1jb8AZf8Tfqxz+LcBxcw0BvVXL0RQKnzdXCg41T
	 ODbTrj3X/zM+qgAsl/OLEl1m/kfHtCUxV0PpL3m+qFvDu3m+tkf7ch0L7WnsIePnFbOjG
	 lzCqrhk77byp5ZqREsSQwgBkb07g6zjt5LPxAeq8pnsh17Xjm/IftLi30BJNn9oGuDE8O
	 H2jkh4YQvnZmpxjdZLpyL4bvI6Rx8VZ8e2V+X8Wbus9WoUcgACOALDknA/wjTiHaORwr4
	 HlHYv+gqg3Tru1U833PUxnpDqep68jruThT55ZtoYVDWILe5Ms0vGtXruNq4pF6xDsg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=TidrwgSq;
	arc=none smtp.remote-ip=209.85.128.45
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D93606A31A
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 09:12:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E9D93606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=TidrwgSq
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4a210470b49so5161865e9.2
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 02:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792746772; x=1793351572; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=x09HZJcXbhukFFa7zcL7tm3Tge2zJkCXK9Nik3vx+pk=;
        b=TidrwgSqaDwKS8G2H8ImlnYWgRkZa+AXF9BfmJRSbEeuEmbwjD3Oc4JvZf9yRwCP2P
         lFdhDpDyr/fWZOBcyO4kZAAZbOiXDJVdOGXI7+jwYoes8sbou91pTFlFAzXQwfO4PdLF
         Pj59H0+3NWJlCgsA4ynX9oaQhAi09tfK69Z2bdB02FYID86IxeGfRtqad8uopWAT+ffJ
         uBdAdUVRJCoofcI14aDEGqBGCoTuYvijN6RTSdA3zaCAzhiTWCxWhmnBPFH/awtudnQx
         kiCWswadN/5oGDVFUueM3xh1e/wpCIx5WnmECPGzaGs0ZXj+LQO0CVha8QLQgeYkIoux
         TyiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792746772; x=1793351572;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x09HZJcXbhukFFa7zcL7tm3Tge2zJkCXK9Nik3vx+pk=;
        b=P4u6ZcMvfWPD8gJwUkHBH6NLowUXZVLsZ1WwNPmmukEpg48euW24x/Q8xztwcVR8ry
         v+EtmnE11vS1OBCjuJG+YxAHoGzIY4wxev+vClGeOVSFLBxTUSiTMzEAmxIymfJVuOuQ
         YTSCtwIQZBg2HMQGaWmT815ZmC9Ef6aj3/Abmojy/57DZLFDSu2JXQmkFHMDJDul+2xj
         9ziDbN1LaoFfSQhLLJuEwwiKcOAcgd9TZ6rLGvZuQZAhl5G0qdOmwqChPhxFFiSSX7Ca
         ITNQsC+gESDG/jFLovcEuBXVNZLVaR88kLn9jiipsPsz8pLbQF91aluDUSCenEerNG77
         wX4Q==
X-Gm-Message-State: AFq9FYKiX1cpbPwRknRz8iQquQV8a3geFBn5GpwsVbWL5pcbJXgI/f3R
	j41izr3NMOZvuC3ftz9Q9XLEyOaigHn4ERyMwMAcgxONpgnWBfgZf/13IH2LdGl5x/0=
X-Gm-Gg: AYBFou1FpTfFQXAg+38Gyqqa/LELpt2Yi9clfhkIg8mGKcMv/yrImxqbvIvvDuoEcfQ
	d2QdCjGr0mjBfsfkqV6jq+8gkZ3WWSK8Gveg4b+zaKdMXFLE3Byftz5nZYCOcg+p8JwapbQoU6x
	Ez+MnR2hWKtdkvpVkhj1myQkXPxCvAr9SgZ7Hr6hoAnzUGF8e/aOEnrXf8oticQjk5xrMJVn252
	74fha8eZ6SYrMI3hbtI/KRtCm31SOkw1+1qHaXdt7LddiNIfHBpkGzN2g4PaUxnGEwgS1218lhK
	6ASMi8zP7JVq7sXYLVEX4WNZBED0f8dUdDRruMlHQkFzlBUAinx9+OXsxxiHNeRstzAAdsTrOOG
	u9wJzMxGqC1DrwUBU2n7jkhqTEZjih1EG2FjPWPCfjvVNBHQ5gM8w0XCedc0QU9sZQ5gl8uULT0
	4e04AJrr+1tW9L3eqL4BSBq7zZUO/VzuuBwCsx/eawXPH1YutolVEJp5g8WM9SUKQNK3o80hSDc
	/69m5s99PTooRuLCL6iNFW+i7FzVdaBLDyCOqG/H0l+mlT1FG0ML+une5E75kUbNwUyLRIp/ykX
	E1dw35R9BQk3BUQgoUM/1tBjsDCkfKuXRsbM7WjS01A=
X-Received: by 2002:a05:600c:350e:b0:4a0:1c0e:b057 with SMTP id 5b1f17b1804b1-4a211c7fb6bmr26494565e9.4.1792746772135;
        Fri, 23 Oct 2026 02:12:52 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a2153caceesm22784085e9.1.2026.10.23.02.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 02:12:50 -0700 (PDT)
Date: Fri, 23 Oct 2026 11:12:49 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Will Deacon <will@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: will@kernel.org
Message-ID: <atskGlwV_Zp4fxPy@monoceros>
References: <amNtKaEO-HMnhrYE@willie-the-truck>
 <amOm00f_J8bZFw_f@monoceros>
 <amXv_ez4FAu6jmXc@willie-the-truck>
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
	protocol="application/pgp-signature"; boundary="jguwmeh4bzyhpsgx"
Content-Disposition: inline
In-Reply-To: <amXv_ez4FAu6jmXc@willie-the-truck>


--jguwmeh4bzyhpsgx
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: will@kernel.org
MIME-Version: 1.0

Hello Will,

On Sun, Jul 26, 2026 at 12:31:09PM +0100, Will Deacon wrote:
> On Fri, Jul 24, 2026 at 07:59:29PM +0200, Uwe Kleine-K=F6nig wrote:
> > Also one of your identities uses a UID comment. See
> > https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-=
harmful.html
> > for learning why this is bad.
>=20
> I'm not sure what I can do about that, but at least this appears to fall
> into the "unnecessary" case from that link. I could revoke the UID (I no
> longer have access to my @arm.com address), but I vaguely remember that
> was also not a good idea?

IMHO you should revoke it. You're losing the signatures, but your
remaining UIDs are signed well enough, so that should be OK. Other than
that I'm not aware of bad side effects, i.e. all the signatures done
with your key are still considered valid.

Best regards
Uwe

--jguwmeh4bzyhpsgx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbJQ4ACgkQj4D7WH0S
/k6jBwf+NpzAKXDWvGnqUtn2fLyo3tAFUrs5vtABA74fLlRon/Lz5B6RI0T/MVrB
In8+hIxx7s7oyJWlSViWf5alqVc9etBDmHIKyvc4EoTBZkAC4lZe+KTavmZG1oKc
Zs3Jy4ArQ/Pd1Xoz1KVpN4N+lbBiX5vWkfIEqFSw5bMRxcJn7QXP8lLIuOyMprIG
07zME/bfam48z0SyLv6/B1wX6P2bp8KjZgaUnl3fbHdRsLtC9DTDnxqQpUbDAUgN
aif7HzahvJRffsXVQY/g8LklffhBavvVSZcNedGwl2+9l+HgiO1csR/3l5BpSMHX
0tRyozYoJUo4XfaAUzKCo0K4GixT2Q==
=Nxwk
-----END PGP SIGNATURE-----

--jguwmeh4bzyhpsgx--
