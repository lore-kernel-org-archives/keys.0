Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794914170;
	b=E3f1H7syyftNHePSti96NqmjKxy/ks9i/i0UBr0MFvcuqDy0nk7Br2KyyENaJzLtTZot
	 9EuOJbYP2F4ZB/SIt8IK9WMdXCJMZjkKiMWUFrTI8jXO9fXg/7SqEEuL/Q/to4NBqdFcQ
	 pkYAJxXMsCF8Pw7vrMcnjX9DYsPRKj3MrkSMOhAEZL8KOs+20flltWsrYA4jTNhAZ+BZp
	 +5EGr5z60iGAgWeHOhLvfFxXSInmTuFBwvztxGs1Wf/kqLnq3PoVfyNB05tAML3AbvB/d
	 kmTpiKQoy/58nZyRosswiBYS3gxR3UUSjKx0zlg2OKV9+rd8QzRDaNTn9cXdlFgX+yQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794914170;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Forwarded-Encrypted:X-Gm-Message-State:
	 X-Gm-Gg:X-Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=oH1YODBNo6lz38gTde1k2Qq77mwMtLgkKAjm3EKDQYQ=;
	b=fNDn9pahxT7S1rCiHktSL6FVYBRyWDDlI0aPVPwIb7xR5oIrpfGxY6Qj0TrvllnbNMas
	 5dLdgZA92Z04VNN52GAWwXam5JVxAoSlAEWfhlj+zhyRbUYIxr6MyNVst2Ba96jphUVBD
	 sCH9ZNFaXG/um4+33mRAl2BDa2FxoZAONsIcfSNqNGGK8dl0cw4cSwSdeNidRPcuWbOAG
	 ELauFeWsvSmL4a1oWKgwS1HtPhiRm3zoc1s1zN3DkLnKBa7uIHrHzulthGIxILo4cZLY2
	 4Gy4czEzXByZyp2ri/f25z9h22v+4dVaHD0wWpm4v0eLv5dU/0m7ZKblcUqcx0TGbig==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=FSZWJqGq;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A12606A31C
	for <keys@linux.kernel.org>; Tue, 17 Nov 2026 11:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=FSZWJqGq
Received: by smtp.kernel.org (Postfix)
	id 973161F000C4; Tue, 17 Nov 2026 11:16:09 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.221.51
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794914169;
	b=df81NujYeKTbj5oTmHgewWtgJzcCu6LNMZ1gHjtby1wfTzLetW6xtZ6c3E8WYa4Nnu5z
	 Rjxj0soq8Zc9rw9GlKQLeaQcrkv+VjDbHOeufQc1iO/6V4RKY8dI60EOLcAXTC5jFbMRI
	 uGnVVzByjH9h+w5j+IFlCq1lTQNEz7FNZ63n/vkKtWotvLsR7aJayJcnOK1oOASFm8TEp
	 wv79H+b5BqWfgnjCN3793Ys4RRQsMKqc39CQ7ZiTOwv/BJK+ZlnsA4d9GuiozwpdG5h5q
	 mT6iGYDDT63XTp+/3etHjBDfXgqa3KWJ/snFyR7+/WdKvC/bJt/1Zctdr9bY2O48K6A==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794914169;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=oH1YODBNo6lz38gTde1k2Qq77mwMtLgkKAjm3EKDQYQ=;
	b=RAN2tJ63bAGCM4BtwNZhZmXs8FkeKcRtGXmIkmLBvddndzDE3l8O1IEn9fy8AS/GZpeQ
	 eTRZfPTt12HqY7QO8nZuMpE0enwLyjARYw+Gg8y55CrySOcNc3F2lNIaCUymiXtDwP9M3
	 lVl9uDC64OVwoq7fFR5RQxTPAlFz5F8uCWEBpHNRrKjH9dv9b/NqDedGmy1Ie1c4MWpUW
	 4mrp8HnTm9Y3wDI8GVN5PpnaTwJWl0Xh0sWOWLtS1+rqzEALpG09ai67MjrsRJdknViWH
	 /TZlQK1y2Mv7iJiCimwe/TR2GZlj8mUQ1Dr+czVou19d/ABY399a6rbg0q8H+yiOrxw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=FSZWJqGq;
	dmarc=pass header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.221.51
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id D9EFA1F000CC
	for <keys@kernel.org>; Tue, 17 Nov 2026 11:16:07 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=FSZWJqGq
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org D9EFA1F000CC
Authentication-Results: smtp.kernel.org; dmarc=pass (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-48e10a70540so2510062f8f.1
        for <keys@kernel.org>; Tue, 17 Nov 2026 03:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1794914166; x=1795518966; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=oH1YODBNo6lz38gTde1k2Qq77mwMtLgkKAjm3EKDQYQ=;
        b=FSZWJqGqMd/a00HQbGdcPYqoEhk1u7ZS58Oo/gM1FDmj8VqGPCPtXw+gAJRSoxOFpe
         1U4UpTMfXUGWfLsaZuFnqKe8GWm8B/BNxICjd78SPD+vQRC5yrBIk4FK72gDvyy65UHe
         M/AzP1ophsSpi1bhMM+HDrCCxRCspiSe4rrf4Rs9hrtQzilLYdxOQeQ2+g4/J9U4l9XW
         hilY8jc+J7WHEbmDoneRHv6NlRX/nptNiNmWvceDuNub5i09FDezoSXkBlN/RPcnfcTz
         3c51mijzbd6t1WS4Ihw4EHctiWnRjibNU34P1XsEl66N4SU9hKOXzZUUn5IkS2jI65/0
         HpQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794914166; x=1795518966;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oH1YODBNo6lz38gTde1k2Qq77mwMtLgkKAjm3EKDQYQ=;
        b=UxJddiwT2R8LvQq4ytLzOb/5tBdq12KKR3szYgmHnlwmHCfag4r5B8u/kZGkzK8DkU
         Lgdg6LPsH6vgol048/lb5rZfyQW1E7q90ErwKW7S7uJCxsy07b7jhAVN2xkUlRxhm6MW
         IOXZC4WfOLS1ssqNQD1MWj6nuO4uc9vm12bBoZU7HefIBsqjnzUPY/Dr1tJxP6riX9Ff
         6wCoPB2lvBl47TVyQqqy1Ddc9j/w7qQc5Yh7NNPb1NReOJ4+VZmPtlJU/RapxDVdf+el
         EuYGJ3l/rUTPTDFBZhZoYTz80H7nq6Jo2XRM3DitmVMglp4/TkbtK8QfUpG7SiTuLkNg
         5Dvw==
X-Forwarded-Encrypted: i=1; AL+hErFAJJSJ11OZJtmWjBqlDmqvLGbasU4q56ZKbeepP1w9MZCU/eGb39reU7uZfvFsH3LW/6LB@kernel.org
X-Gm-Message-State: APuU4Z/kqBjzHjC8XrskqV6gUapmpyMZ7Ks7aJTLFV3+pUM+sMXtFRWF
	UvnNA7G0f8J8v4rwysaCXcZyQHTvkmjM1QfPaxAAaELP8ImZavLIZhiLVkUuWtD4F1M=
X-Gm-Gg: AZFdTZfOYACalmxJhub04SMnACizXRHK0R5bwggBLHgXiPW01WkbHHJdNSFd5Tlylh1
	pAABSZSO3Kyw8CIi5VMstlUFXUitV7q/Z+e/UQ6i/uawD3K+HvJoFTbnCZvo4dBLDOOASV1l7FY
	TB3N26QKbxH/BNxL5kuHF70OXWfoDN5ofDbjpKYCVp7T/B3YIPv+AZwLnEWi8O+01MbNyjqYPNX
	nNpgLnzReQy3FWn4PJw+zL9OS3PkoON0Q37jterS/qZrkGnfwmimJKyi9Hw3kgEha9iIBRWOA13
	xO+LbPxBd3/cu6+WOMt77Rq86mivv2LfFI7UwpRYpVsriob9Iy8NpIGqsBJEtw/5hHwKvJz2p0p
	4rvRvLEv4XYTCj3DcdS1S3SL6fnVlwjBOc8XcpMzOvMRL1x7pFFvWmNQTk6ROyW+WAKc8StA5F8
	/YF86jCVx8eTCiL7xnBTM6x6HqqsC6R7b8ikLoJcsnnVPqcj9oUQtWKYCaGqPigVMZ4tdx29nUq
	nMEPTGh1bjKATa/qvUMtHKGtz7V2yjiANuFpYiBSWAYnsizxOW6Dx5AvSWgwyCYF5Asv93WQNXy
	WnBsUE0d/oRP8+HmgMBb2I4LB1j9qaIH1wdXqHL7LIdgcN1UzFgJnPU4DMvDBux4axAlY1bAyGr
	I+gJSqhVHm4Q1uUSd9UhR6fvcSDZvodaLLCqa
X-Received: by 2002:a05:6000:25c3:b0:491:4e13:fde5 with SMTP id ffacd0b85a97d-49c6fc9e61bmr32067380f8f.8.1794914166022;
        Tue, 17 Nov 2026 03:16:06 -0800 (PST)
Received: from localhost (p200300f65f19a904a5ac91f50e61369e.dip0.t-ipconnect.de. [2003:f6:5f19:a904:a5ac:91f5:e61:369e])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4a378138cfdsm4626335f8f.58.2026.11.17.03.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 03:16:05 -0800 (PST)
Date: Tue, 17 Nov 2026 12:16:03 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, keys@kernel.org, 
	Juri Lelli <juri.lelli@redhat.com>
Subject: Re: New key
Message-ID: <avtNGdnmyBUYEgTn@monoceros>
References: <avcPLMVwvkWUEpJe@phoenix2>
 <avs1jP83CDmCDgy1@monoceros>
 <CA+JHD93y3917AhdpaT_WoNjz_cGk=aFmXRMW32wW=ug0jbWwEA@mail.gmail.com>
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
	protocol="application/pgp-signature"; boundary="7lzb76o3t7uupncc"
Content-Disposition: inline
In-Reply-To: <CA+JHD93y3917AhdpaT_WoNjz_cGk=aFmXRMW32wW=ug0jbWwEA@mail.gmail.com>


--7lzb76o3t7uupncc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: New key
MIME-Version: 1.0

Hello Arnaldo,

On Mon, Nov 16, 2026 at 02:20:56PM -0300, Arnaldo Carvalho de Melo wrote:
> On Mon, Nov 16, 2026, 1:59=E2=80=AFPM Uwe Kleine-K=C3=B6nig <u.kleine-koe=
nig@baylibre.com>
> wrote:
>=20
> > On Fri, Nov 13, 2026 at 10:22:52AM -0300, Arnaldo Carvalho de Melo wrot=
e:
> > > Hi,
> > >
> > >       Here is my new key, with an expiry date, signed by my previous
> > > one and by Juri Lelli.
> >
> > What is your plan with the previous key (D65016F35352AA40)?
> >
> > I'm asking because:
> >
> >         $ sq cert lint < keys/D65016F35352AA40.asc
> >         Certificate D65016F35352AA40 is not valid under the standard
> > policy: No binding signature at time 2026-11-16T16:57:45Z
> >         Certificate D65016F35352AA40 contains a User ID (Arnaldo Carval=
ho
> > de Melo (kernel.org) <acme@infradead.org>) protected by SHA-1
> >         Certificate D65016F35352AA40 contains a User ID (Arnaldo Carval=
ho
> > de Melo <acme@kernel.org>) protected by SHA-1
> >         Certificate D65016F35352AA40, key 4C6AB5766A82C4CC uses a
> > SHA-1-protected binding signature.
> >         [...]
> >
>=20
>=20
> I'll try to follow Konstantin's instructions to remove those SHA-1 self
> cert signatures and add an expiration date one year from now. Please advi=
se
> if I need to do anything else.

That sounds good.

> Juri tells me he'll send his new key tomorrow, replying to Konstantin's
> question in another message.

That, too. Juri now sent his certificate, but Juris signature on your
certificate wasn't imported when Konstantin added it. So the keyblock
you sent must be reimported once Juri's certificate is added to benefit
=66rom that.

Best regards
Uwe

--7lzb76o3t7uupncc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmr8N3EACgkQj4D7WH0S
/k6qqgf/U51x1ScJwDryhEPRerAKszOe72l2sYRlMIqtRyuS9iY51bSZsTAnZgyl
nF+2BJsWrK4ujBEgLEJmMdNgAqrJNy08ne3H0puFtVmyIa/1bdkrXRQ//z4+Hfw6
5wX8DAs+vNeWigWAbAsQEwstwqdWyoyFwA2uDYv4+bfV60kToLSulhnFVYyg4XnN
5tRBrUHvooxrPUvIMQhd3Lq1Gsiw/+Jgfbh+yBLuPfdPndv5TTpS8BjJSKSTA87f
xtkmE+DQOap6Y36pPkmjwbrEx717ivlaqN7NrxRnBPGUAY/XzqvQhvwtBQT5nF5c
uRcbPqc8qFVkgKLsN+Lg3GbU+b9fVA==
=7Y0y
-----END PGP SIGNATURE-----

--7lzb76o3t7uupncc--
