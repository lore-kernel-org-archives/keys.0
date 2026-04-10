Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129E03101A5
	for <keys@linux.kernel.org>; Fri, 10 Apr 2026 20:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775854121; cv=none; b=bllwW2nalXy5YFaxxwM3+TgxWIuwY8TNRMwFWxqF9aGFXjT6NrMo10vhV/T5SFscUNPfUgjhBkTBYIbH6066i12MPhH5ZHut86tgcE+Y65igmBTpJ9csJMMMj9Va6N7eynIYWQienxjOBSMFwVJInAxaHpLBSWB18JJaxsyo7EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775854121; c=relaxed/simple;
	bh=8KkHRXRPJaUZ6g7KBXUAY52tqHSCXQ/U/h555iLQuq4=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 Mime-Version:Content-Type; b=BW5MV0oik3dVZ4aSPESKj5GhsplQeYTrjg4+dHkiN6Modlwf21pUEObD24f8D07GA4GWJCMsP/Fh94mnXxKXMAocaSDWxIWTuHc+No1Dm0e+NoGJhCgLbE2nJJBTdCwFA+fx+bL8irKI0/NDzr+nnvNDcg+EiqJBBRavuZnpcMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAWJ/KfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAWJ/KfD"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91A74C19421;
	Fri, 10 Apr 2026 20:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775854120;
	bh=8KkHRXRPJaUZ6g7KBXUAY52tqHSCXQ/U/h555iLQuq4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=gAWJ/KfDIYWjVK84q67LTC05/vT+xl50F3qaHnBOt87Fmq293hoPXbXQIO0j35wPK
	 HeTHBnmiqAUR2jnOWBNjO7wX5CUuFf3MtycOMBAf93m2rlYPljFFUUU3Bd5yq36ksw
	 cJZt0e0f+BpGcp6JXluWmjUQx26VbURW44nmPg+U+dqAHv5/XtRejbR0WOyMyLI+ib
	 J63Aw0tb7or92J//FptWQ6YAgXy1T3aZogIqgteRTcinfbE7kbZiZBY9jHIzpaUd1r
	 br9Xo4fP5nulaDyEfZYK7yMWEN6Msv8fkpunZJ1wxDO22RMtCfe8hqtJmoS1MiyLOd
	 3ekW9U4/tWSVQ==
Received: from phl-compute-07.internal (phl-compute-07.internal [10.202.2.47])
	by mailfauth.phl.internal (Postfix) with ESMTP id 7CCEDF40068;
	Fri, 10 Apr 2026 16:48:39 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-07.internal (MEProxy); Fri, 10 Apr 2026 16:48:39 -0400
X-ME-Sender: <xms:J2LZaSS3HkNW-4wkc7AgIGjCRrDXemZci0Eyb7IHDWEysbUg2zIwiA>
    <xme:J2LZadzxYRIzpUE_TBz-diCFlioFMIlyjb-zjJ8Z7PjPsFCHxdOp6m5SLgljogyb2
    a8KyExI-uwwzdupNZT8U1JiqHQ3w78eLM7B-ALevI00V4t5WHZJBxZd>
X-ME-Received: <xmr:J2LZadeYGMa5MNobMVMKHN57EmLgwpswdbFMW3S3MQvEdSsdWzILNpGdKhd51eMap11TBWf8T09KW10-V5wV7Ow4gNaY6haTUsA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeftdegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevkfgjfhfugggtgfesthhqredttd
    dtjeenucfhrhhomhepffgrnhcuhghilhhlihgrmhhsuceoughjsgifsehkvghrnhgvlhdr
    ohhrgheqnecuggftrfgrthhtvghrnheptdfgveelgfekffegffefleehieffveettddthf
    ffjeeluefgffeivdehhfdttdfhnecuffhomhgrihhnpehstghhnhgvihgvrhdrtghomhdp
    khgvrhhnvghlrdhorhhgpdhklhgvihhnvgdqkhhovghnihhgrdhorhhgnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepughjsgifodhmvghsmhht
    phgruhhthhhpvghrshhonhgrlhhithihqddujeejvdeftdegheehqdeffeefleegtdegje
    dqughjsgifpeepkhgvrhhnvghlrdhorhhgsehfrghsthhmrghilhdrtghomhdpnhgspghr
    tghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuhdrkhhlvghinh
    gvqdhkohgvnhhighessggrhihlihgsrhgvrdgtohhmpdhrtghpthhtohepkhgvhihssehl
    ihhnuhigrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:J2LZaZKG2PEcLcfU7ZJKlWcjrVb_Xrg97ADDcHr-YC5WLN_75l1HJQ>
    <xmx:J2LZaeH1dhbC7KoGENGvb_Iyd96mbgm_Ak4gpNzQQOC5N3H_2xAvqQ>
    <xmx:J2LZaTrCkthCQxUsgacP3R0O9K7jc4VVNCQL-R_kwDX0U7vYjku76Q>
    <xmx:J2LZaXSBCUacYCIOzVYzWzx26AnBMG9Sk7NyUnTddfUzct4h0LlqKQ>
    <xmx:J2LZaQNOHP3qWP6_rBstVweodjVZpmTdGUuZqRwvmm2XgqPEMCKeYmzv>
Feedback-ID: i67ae4b3e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 10 Apr 2026 16:48:39 -0400 (EDT)
Date: Fri, 10 Apr 2026 13:48:37 -0700
From: Dan Williams <djbw@kernel.org>
To: =?UTF-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Message-ID: <69d96225e9f67_6c31a10035@djbw-dev.notmuch>
In-Reply-To: <adiZwNiyyW6QrSmF@monoceros>
References: <69d705adcdef2_46de100b@djbw-dev.notmuch>
 <adiZwNiyyW6QrSmF@monoceros>
Subject: Re: Add djbw@kernel.org to 1ED2916A667D8802.asc
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig wrote:
> Hallo Dan,
> =

> On Wed, Apr 08, 2026 at 06:49:33PM -0700, Dan Williams wrote:
> > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > =

> > mQINBE6TN1IBEADBi0Ztes1AmBXGUHh4zp7z8YMykXtF2o+Vd5uscmp0Z+CNoXMu
> > waEOmxQjwjC6khh7gl/1i0YNMHtwTaNFgXJKVluH5uMXpeo5GXrCHmI14YNhJmRn
> > 3AHzmM8wh9H0lCy96F71Wv13itJINy9AKYarQJcIUmpMxxO/f5VoE1UYeoouy19+
> > ...
> > -----END PGP PUBLIC KEY BLOCK-----
> =

> The two UIDs that are already tracked in the pgpkeys repo are only
> protected by SHA1, and also the key binding is affected. GnuPG has no
> issues with that, but other tools (e.g. Sequioa) take this more serious=
.
> (See e.g. https://www.schneier.com/tag/sha-1/ for more details. And
> https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3=
motyyoo3@7vf7ip6gxyvx/
> for how to fix that.)
> =

> While you can address this yourself, your key has several signatures
> protected by SHA1, which is somewhat the same issue, but you'd need the=

> cooperation of the guys who signed your key before, to fix that. The
> easiest way to do that is to ask them to resign your certificate.
> In return you can offer to resign their certs as there are several
> SHA1-protected signatures by you on other keys. See
> https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=3D1ED2916A667D88=
02
> for the "todo list".
> =

> Don't hesitate to ask if questions arise.

Certainly the sq instructions look more approachable than doing this
with gpg. Given my old intel.com address is now disabled I assume I
should just delete that uid and then only need to fixup the gmail one?

For using an offline backup gpg directory to redo the signatures looks
like I can ask sq to use a different PGP_CERT_D directory. If you have a
ready example for that case that would save some fumbling time.

> From my side this doesn't need to stop adding your updated cert to the
> pgpkeys repo, as it doesn't make things worse than they already are.

Thanks for the heads up!=
