Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794913371;
	b=esdDh2Z/xnZS/t/Bg+5054VYNai22bouGN1m+/fm06bnrD7oq14S3fygXe3QlLlsS0LL
	 uMtQFvoeJTL+6x9kMaZ19CFhs0LzWOmKeLNghksbXyRWyVNB/B/duUyEcf7THPaDjj4qB
	 wJnCovEZlKohs1I2PoeIASk065vfn9jMOIAkOSf7aZnvxJ+1XQ9eYoyzFEabjnFWAuy0U
	 e7QHtC6I1Gv8J0NZpCNe/wGOdWvzGKU+l/jnliR+B96f4fmXxGhQvHu5lZagIBlAL0zfG
	 vcLFAYTyQHotJo0AD2i+mgVOPQNverYldgBWnnZoTWJMZ+9NIMwZ0ZJGIYIJtXAbL1A==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794913371;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Forwarded-Encrypted:X-Gm-Message-State:
	 X-Gm-Gg:X-Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=4nIPdvMKD8VVgcMSsCRNZ5y/Cn9Z9V9orkpZz+47rJ0=;
	b=QU3xpeauAloYOGZ5o5Cf5ve+W9al3/DqM5j7CubxmrBgGwCNNIx5tLSZu8fswf0EwRch
	 vzws58uNhxm4H3qqP+PzFPY0dG6hPvgc/ptVzUi+D8uVSpYaEAg9InqsteHJvLED1ZYFJ
	 hw6Hxd4wWj90/+lFrccBpEIKbi+OOVbnuMQsqiJQZA4Du0jAhBBytrGY21/77Wd7FVIst
	 xeUXGOugYROSY70z0SLjMiia3CSp0+fj3SRJPpW8P3hvdU0e2nEB73SWKZG+NmX3BVZ/a
	 XIH0JQxXmrzku6pVsgspBVgsyOqTsoqQuQsgM5G5qgP4A8H/BdqYUvhPmRmkjTBkvNw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LhFfQJM9;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35043606A31C
	for <keys@linux.kernel.org>; Tue, 17 Nov 2026 11:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LhFfQJM9
Received: by smtp.kernel.org (Postfix)
	id E627A1F000CB; Tue, 17 Nov 2026 11:02:50 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.128.48
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794913370;
	b=i+jNWtKGCWPW+s4FMmryiu8FgSkOw36kkSCwwrLOf2YlO+f1//26/plBza2uXE3bh1dM
	 me3Yu9A+efxYt3T+94uXhKyP2PHARZqsWNmzpSnk1HQzMTzQETVQ94GIK1XFgah0U++fe
	 EPJ8f7O+JErqUKya1/mu0EO9DInuLJVNTv1Rm7+zFylQRCqoQTPCGTbUTe7xvHw0uSg5p
	 82gdz8YKSrsY8zkkKi8PQ7YOwvjSVys4vY1gFXNrjL15Mma+GVWXD9/FrUS5ZtLuW2wX0
	 v+Gapb8NYsnabSCW6DibqUTVHw3JayK/ZT6Q/dJk4QjH26BNETUF23+jbwinfgSOVwQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794913370;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=4nIPdvMKD8VVgcMSsCRNZ5y/Cn9Z9V9orkpZz+47rJ0=;
	b=QA0zBC50Ph8BHyV/6jW54kZl8jkCkv4jl2M4yT//hTd3Mxa/kQ/Cb1Mj9A/AAvOW2j/Y
	 VgUghajDhBN6jJjvkne91F0R4vyBDnTSPG5CSNtpiVgS7NZJMua/sg5qDXeHk3b9jwkSe
	 JyhPeIm31fpKMIkBjyN5lfbaDBExNoRvZGIOyLr3r0XYm5IYP5qbzHsOaq2/unUMHgg/B
	 me3k39TRjgZ5+z/cfql0uRd/U5rl7JwI/Byaieq24I0ZbIJ3zuA1sEW58n3C5B0I70WBM
	 fek/XPnzXIqgABrsMnkU3a+5OO3/L5n/5COh6IQAQ2ZWvV1co3DAjpjFtZoFoWH7UlQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LhFfQJM9;
	dmarc=pass header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.128.48
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 63CF51F000C4
	for <keys@kernel.org>; Tue, 17 Nov 2026 11:02:49 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LhFfQJM9
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 63CF51F000C4
Authentication-Results: smtp.kernel.org; dmarc=pass (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4a210470b49so37197025e9.2
        for <keys@kernel.org>; Tue, 17 Nov 2026 03:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1794913368; x=1795518168; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4nIPdvMKD8VVgcMSsCRNZ5y/Cn9Z9V9orkpZz+47rJ0=;
        b=LhFfQJM9VM4CsjmO3f1KgPcylMame4hUhvE4QY6BFcabeLYuHdBseq5cQBJXYlu5gP
         RZiMOGTR4cp34sBR+R5FL+mj4wEi0JK16cBNs5Bntg4FbO6iGVDnERn94ZRcHOOeX9Ix
         eeueq+CsEtOcbfcKDnezjXFeILEzqf0+f4CCgrzH/dZr25B9PnfRSCFi+Uo/EUUCNR2Z
         8MOpM+fFspcYvywVtgjipmbo2r88BZRIoDqsHcMtbLH6ERlAYQar4WtGFHxfGOPRil+S
         ZQwedid5aikw1uVL3n+N/XY3HTLIUzLbxc9ju2NbJTEnQ6xGFfP1qGR4omhhL6OR9JsL
         nFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794913368; x=1795518168;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4nIPdvMKD8VVgcMSsCRNZ5y/Cn9Z9V9orkpZz+47rJ0=;
        b=UWq1CJ2pOuqKaO2rau3XNpFNB2bdawrh3DKYdKW4Q/zOnYLTbXzO7EQ7Wdon4qqeqd
         UMRXjtP8zRVKHhO0iDtdo6ToJPo8fLL+pI81qrhtMJolCdJwKNVxdBJ4U50XKkkAOUKQ
         n4j66rQrJ/4ko8WY+/KJrQtHgF8AWQlQSP5g3ORC2XusSJOOq/QAfL4GNwHyMA+8mVRc
         dHmcNRkAZvAAnxK3/Cc1ucGWPm8CosQLG8LAJ+ZHS3jd0AoEhH2TRACIB7BcTHNo3kkb
         XVxHtPukdNYAJxh9KrooCa1U+XL8NccwqFnIelX+M04YbRnij3iHr3edXgoTnY2tl41Z
         imEg==
X-Forwarded-Encrypted: i=1; AL+hErH3voaqHMpMq1tszH3QH3rY+YUhdq7MwQAdHBpiJhrXa5iGJRYKbVKGMmV/NkrRcfXVxrKH@kernel.org
X-Gm-Message-State: APuU4Z+pEyxRcheXen+C0d4y3mbl/7TQQuwVj1YF78iwa6LHFL2f71ry
	uTpLWQhtBF/F550lvs6FgtLQ/142NausUI/xIQjghEvrd0mbjG/FqHst6KbvshAe6ho=
X-Gm-Gg: AYBFou2HrWOLghg8x3D5ZrovSd3tyWdK6B5+nxCrN8v/B/nnaOnwqI4GwptvZUTeA7P
	ezeaXiB+nQfhmc4qqLJFK301yymvK9zeXDLGOFussuukjKmsApJVt2swr77emvqO/8SCN/P5ggK
	YWxVi7Ebkpc2TIn43psQmX172Rw7WaePXb/oh95nQ/J9H+b82MbCv+0+KiZMLZ06aA9i3ztFp/Z
	EF0qRhF6ikx8TA1wpyrio7Tn91NiAm/pHThW0nH7xnbsCe8/HMjK4iH5Hr8rxWXf8KWXOUm42QJ
	qN6Ep+JgLhoHe2Dpbszm8jlgekKtbj0TzgFtE9CIlODUxDU/ifZPO2zAq/ws5+dTIuSbykav5TN
	2DjrTmI6BAVo0zR8+YiVB2LmmP5FnnSgLYFGeYI9VQ9hgwBAGyHPfeSF6FNOk0rYJNoMCxg3v1F
	Umhp6171hym3g7y8wWhJ5yjI44AkGUkLXAC71gJqzGh35LAg47TN6wMdcQOtr/Gyi06RyKDVP5v
	p1shfBpXw27pUuLkxwNe5Zeno1fs0Ap/CM+CJWTRA9iUQiFqMLO0jYqxoXzCaLJ3+g5tTYA9BPA
	Mw42C6EgizrGyMaLBrmDSNC7bqaMk2AGEGW7t+eGFOrA9H1BrKAjbjnNP+uX2FcB1dLLMr/R0Vp
	dxjGemJ/hjGbY2gI=
X-Received: by 2002:a05:600c:1912:b0:4bb:6375:aa41 with SMTP id 5b1f17b1804b1-4bb6375ab25mr207353315e9.27.1794913367627;
        Tue, 17 Nov 2026 03:02:47 -0800 (PST)
Received: from localhost (p200300f65f19a904a5ac91f50e61369e.dip0.t-ipconnect.de. [2003:f6:5f19:a904:a5ac:91f5:e61:369e])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4bb571d7e87sm253451565e9.3.2026.11.17.03.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 03:02:46 -0800 (PST)
Date: Tue, 17 Nov 2026 12:02:44 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Juri Lelli <juri.lelli@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, keys@kernel.org
Subject: Revoked certificates not imported by current scripts [Was: Re: New
 key]
Message-ID: <avwumEcwrZ59Ua6r@monoceros>
References: <avcPLMVwvkWUEpJe@phoenix2>
 <20261116-imaginary-coyote-of-chemistry-cfafb5@toolbx>
 <CAFj23BhH684WaDF6ptv1Bz8n7B6w-PN_MP7oj8RA9krQ_5LNeg@mail.gmail.com>
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
	protocol="application/pgp-signature"; boundary="qtny236pscat773j"
Content-Disposition: inline
In-Reply-To: <CAFj23BhH684WaDF6ptv1Bz8n7B6w-PN_MP7oj8RA9krQ_5LNeg@mail.gmail.com>


--qtny236pscat773j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Revoked certificates not imported by current scripts [Was: Re: New
 key]
MIME-Version: 1.0

Hello Konstantin,

On Tue, Nov 17, 2026 at 07:55:50AM +0100, Juri Lelli wrote:
> Hi Konstantin,
>=20
> On Mon, Nov 16, 2026 at 5:28=E2=80=AFPM Konstantin Ryabitsev <mricon@kern=
el.org> wrote:
> >
> > On Fri, Nov 13, 2026 at 10:22:52AM -0300, Arnaldo Carvalho de Melo wrot=
e:
> > > Hi,
> > >
> > >       Here is my new key, with an expiry date, signed by my previous
> > > one and by Juri Lelli.
> >
> > I've added your key, but Juri's signature doesn't match the key we have=
 on
> > file, so it's been discarded. The key we have on file for him is
> > BA2A558FF4ED722E and your key is signed with 1AD68C9C6DD9111F. If it's =
a new
> > key, he'll need to send it in.
> >
> > -K
> >
>=20
> Correct, this is a new key. I've revoked my old one (BA2A558FF4ED722E)
> because I've lost access to it.

Hmm, I see that BA2A558FF4ED722E is revoked on keyserver.ubuntu.com, but
if I try to import that revokation (as it's worth to be distributed in
the keyrings repo) that fails because "invalid" keys are not updated.

Besides BA2A558FF4ED722E this affects D692003DAA02C70A.

Best regards
Uwe



--qtny236pscat773j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmr8NFIACgkQj4D7WH0S
/k7ydwf/ev06c2ATzfa8fSEQx2oElFVueR+OtNfE/Ldguwaj5rA/ueGt+TbDiYw5
GqBHtMBEExTWlJfA4GplX7JX1SVn6WkdggmqUtt8QakZ4aenN4FlzbErnUvm4brj
LImPg37MNPbaH/b4uQHFpvWHGNg5pwTiwF5bgRHVnpy5aqt3ag928Sy9jBLcZFFW
LIITEOaEj2AlM2muwxpHdTdrUHyLpH4oXHcFLEFCpUF+ALt/RAguKrRD8ZPCtcEN
BNg3YIX0GvCiWXZt4lyeT5+e5cAqmqEmMsh6VqkFkadTmPKlJMpgKDpusp9TnLaT
nkMSN/tkLKeUTGihkNslSEF23VjX1Q==
=RAs4
-----END PGP SIGNATURE-----

--qtny236pscat773j--
