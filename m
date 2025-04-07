Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3409F1A2391
	for <keys@linux.kernel.org>; Mon,  7 Apr 2025 21:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744060602; cv=none; b=s8w1ZmY4sqdYBA2uQ4Dj7BKw0qUH8afflK3y5CinAiPuLAFUrCLC1lCz9LYHrdPfG1V79h9WO+Hx4JuhGzXm1mWqJGYcaSjnzW+h8KrSEAXVT0Sy1KyUtG4r75KZ3RW7p3aSYAUuM/VDVRA8yWyjP6MNax042DgmzTq+iku5lGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744060602; c=relaxed/simple;
	bh=bk4TsXAYCi3tjAjtuvhLlcZJeaiWV6aJFnKc0dsRcN8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=EnFr4QtziZuK48jbzDuTC1DKGA5ZZBoeAU6F+Kh7bUm1zZWAecIWObvjf6fQJtcw5p5/0UzpvvtdlQPihw5LasU3WU4Ho4Q0he6OiOQ19VeRtkJPrZz/PALbYIrzUUMXqLiN8v3QSXwLu1CPBsq6AtVQSEcAbPRW24Xlyt2N0e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=h26VW9zE; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="h26VW9zE"
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac2a9a74d9cso555083266b.1
        for <keys@linux.kernel.org>; Mon, 07 Apr 2025 14:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744060595; x=1744665395; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m7CpCzJhBbO9cKvmzvEleIyuoLHA5EBWGhk2GZmkE1Y=;
        b=h26VW9zE4xSkFef0qGlrG5v6EkPKl5LtNb5AhIhEAGO0rtziH9dFwGJ3i+vgozvHMh
         +nagzpKuiNQCTGmOgRt1Ok1T3VoUAvkDTiPlt9jsvEluH0Nez9VefGwhNJpb35nJ1hqS
         VH26wXTn4xSNYRib4jpnKbCiYVqLrwmxqQ/9p15JSVKKHIig9IxTR3Cwh1W3PscJWcEv
         AH9A0SVqQ0V1gGeRIGb3QQaScihgiOmjinVc7ehKPKNTN6oLRkSR4EVPoYUQj2UlgTjv
         5KANklXiRlN+fnsRSa/aVPsVwOOu2VV9A5iP6640x9c3Zpf5fubmoxwb2+cY0NWLB8e8
         LJbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744060595; x=1744665395;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m7CpCzJhBbO9cKvmzvEleIyuoLHA5EBWGhk2GZmkE1Y=;
        b=gGEO15zZqWxKjQMWf65Jey3hEmGGilukybVIQ4yEFrZOjHObmFExuyCtE67Va9qOcU
         8zlS/b/50fE+GbNvpLESlzNhSMDVOqqwvKuNY6UV95fk8ICqsx9eWK+SdLYeJaSxZAMw
         5ruIYyxC+HDH7LVQoALNo2+P1EalF0D0TXht8R2l7K11I+FL1xRKIUzwrqUoRkCSN4QT
         tM+XlOxVyg7skDDICpNuFWNS7pGPiP/3HH5Zleq7krBvleT5DVqUGKRML2Gljw6MIfXm
         BSCiC62JuUkx1yAExgLJiuLjInBdcsby+IRfll4CuPZAydJA0EDPVeyAxZ3UgPBYDcjX
         hOWg==
X-Gm-Message-State: AOJu0YzLHbJrdnE2Q3cZU0smxLHWNoTn5XFmEBisTP2/mkxJaa2bLQSV
	GrfBFK4Ya3k92I0xmx/4Zm8Z8Adc6HvxckD1ppjbw2/PunO+RHnQqSAjPFue0mc=
X-Gm-Gg: ASbGncsk9tP63twb2KPn/ZKpLkH1U1JEajEVui2Cg7WVBykryp0uPRNii4smv262MYU
	k1bxgIt4APGnlRhnJIa16RLecurmUCRwcdK1C4ECE7Pd6qdCQMy8FX62XQWlIRHXaLeAqNYfw32
	r6gp62hXTpuwb6RqDhA566dv5mxiqwwAGePlNlraQePVul8XxI/C4WQ8nekJMEybrPYXNBABBfz
	IYJEIJ58WEmH5H7YI4DJnFd9+Z11Cbvf4U2z9E7PkXKxBsMpUJdYOiOXmBTWwWeupO0QpL77zOz
	qV2bN2imx3AhWOhkERWh3c2EcI+chbYK6Ndn8NwIKPtQ4FQlXw==
X-Google-Smtp-Source: AGHT+IHRT5li3QxW+MNai8SAb59NLxqjiTX06N565vNbvMXariB54cmyCZHfTv9eBorKbirDxCccCw==
X-Received: by 2002:a17:906:c115:b0:ac6:ba4e:e769 with SMTP id a640c23a62f3a-ac7d18e2570mr1129170866b.35.1744060594948;
        Mon, 07 Apr 2025 14:16:34 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ac7bfee637esm800146666b.84.2025.04.07.14.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 14:16:34 -0700 (PDT)
Date: Mon, 7 Apr 2025 23:16:31 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: [PULL] Drop signatures by keys that were removed
Message-ID: <onmvaktb7yh2svkau2wc3lcfgsz2q6ntshn53dslg5okd36vmf@tfii4snrvngk>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qqfli3x6kgj3lch7"
Content-Disposition: inline


--qqfli3x6kgj3lch7
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] Drop signatures by keys that were removed
MIME-Version: 1.0

Hello Konstantin,

the following changes since commit 64a88338d894446c5e17f618b8a19846232ed43b:

  Update 570338B018144F28 (Mattijs Korpershoek) (2025-03-26 09:49:25 -0400)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/pgpkeys.git tags=
/202504-drop-sigs-by-removed-keys

for you to fetch changes up to ed45fe570ec2a373cc5543071b43fb5b4749b3a4:

  Drop obsolete signatures by Alexander Shishkin (EBC5F624630557FF) (2025-0=
4-07 22:33:54 +0200)

----------------------------------------------------------------
Drop signatures by keys that were removed

On importing new key material the used scripts make sure that keys are
added in a "clean" state. That is (among others), no signatures are
added from keys that are not in the keyring.

In commit 2dd67ee0231c ("Drop all keys that expired in 2023 or before")
several keys were dropped which left some signatures on other keys that
wouldn't have been imported without the now deleted keys.

Remove all these signatures.
----------------------------------------------------------------

I chose to provide these changes only as a pull request, as some of the
patches are huge and given they modify ascii armored binary data, they
are not reviewable anyhow in a mail reader.

To review the changes I recommend running:

	keyringgpghome=3D"$(mktemp -d)"

	cat keys/* | gpg -q --homedir "$keyringgpghome" --import

	gpg --homedir "$keyringgpghome" --no-options --with-colons --list-sigs | s=
ed 1d

	rm -rf "${keyringgpghome}"

before and after merging this series and comparing the output.
The first line of the gpg output is dropped because it contains (I
think) a timestamp of the trust db, which isn't useful information, as
it changes for each import and the trust db is empty here anyhow.

Best regards
Uwe

Uwe Kleine-K=F6nig (8):
      Drop obsolete signatures by Tejun Heo (19F81DC583926170)
      Drop obsolete signatures by NeilBrown (39EC9EDD566281B9)
      Drop obsolete signatures by Mathieu Poirier (5378A31CC0EC0959)
      Drop obsolete signatures by Inki Dae (573834890C4312B8)
      Drop obsolete signatures by Boris Brezillon (65ED36017E08B700)
      Drop obsolete signatures by Paul Burton (8220D9FA693C1C65)
      Drop obsolete signatures by Andrew Grover (A41EC7315319EDAA)
      Drop obsolete signatures by Alexander Shishkin (EBC5F624630557FF)

 keys/077EA269D5B9D38C.asc |   18 +-
 keys/13A1BABBD606808A.asc |  177 +-
 keys/2EA76B9C2B466D9D.asc | 5582 ++++++++++++++++++++++-------------------=
----
 keys/442D5E992BA82224.asc |  173 +-
 keys/444D05FEF336F5F3.asc |  649 +++---
 keys/503BF2D40A30BDB9.asc |  623 +++--
 keys/59FF77874E89E813.asc |   39 +-
 keys/6BBF9F19873B518D.asc |  405 ++--
 keys/6CF8CA2F4EC8A8CF.asc |  733 +++---
 keys/774CE9C0981DCA52.asc |  589 +++--
 keys/7A23E466D4A2B81E.asc |  269 ++-
 keys/7EF4F96F2BE9962A.asc | 1346 ++++++-----
 keys/87C1A206239D04FC.asc |   83 +-
 keys/9CCDDF2CDEEBCF53.asc |  394 ++--
 keys/A7C92F7A39BD11DA.asc |  151 +-
 keys/ABAB231F97DF5881.asc |  411 ++--
 keys/BDA06085493BACE4.asc | 3920 ++++++++++++++++---------------
 keys/E56FEF955A4BEDCE.asc | 1032 ++++-----
 keys/E9C315B1AE8CC723.asc |  323 ++-
 19 files changed, 8194 insertions(+), 8723 deletions(-)

--qqfli3x6kgj3lch7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmf0QK0ACgkQj4D7WH0S
/k6/Ywf+MdaCCGVyaJrWNb712gua/ZXuKID2zx7Cyy4WoL5AEYOJ+kWzGw/kJB8c
lIPEK7gFTalVgbWSEAfGo8X8au1fICAopq2e9hFSjzpviGKmfYkBO5vKRH+gRjvQ
WPd98lccIzwBHXg4ty8lJYc3dKqx8CEyMg9fGLsWPXB69P8sm2/FzITZYcAQxYsS
B6OxtuIo5bA+aq80XbftTjlZ06MfXQUYL5bmD9AgbvgnBeeeaOcv7UM8gFW4tW48
9GrSQeJoWVkvVwgacQ/NW8PYFLBjBJHvdlxYyN2IOoaIeAAM476t9pgFw664T5qa
d3TCb9I1iCKtoY6guR1MRKQ6BJ38Tw==
=elta
-----END PGP SIGNATURE-----

--qqfli3x6kgj3lch7--
