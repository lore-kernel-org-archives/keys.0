Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793153459;
	b=qVmr9GLcs8MXVgCLzJ80SiQBswhuMGFAYokYUalg+yK+6VJcxeVyzM4KNYlgT1+bw8zQ
	 hkms+JalWeA6SJyh7UamOhE3w4lmJVpO+BQGTJy0AmqdZqP3IaQcMWT8fakYlZviwVdhi
	 2+l7tLtyhvbOrhDNoq3hLMmAmJUMtQPQvXQgdynqF4aq5KzU/KFIpMg1XmAiiigMHTovs
	 mrIjPA3w1voPSAFlxrI4JQi/fW6G+TVToryTcue59KUwtzugxYxPQ6nh07OWbg6K+1bwl
	 CoLWcJGoxMZYWGi5UgcU3MXvj2Dfr5s0vwNgS20ToQLYFB0n5+BKo1MEu4lvKLU1lbQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793153459;
	h=Received:Delivered-To:Received:DMARC-Filter:DKIM-Signature:
	 X-Lms-Return-Path:Content-Transfer-Encoding:Received:User-Agent:From:
	 Date:Mime-Version:In-Reply-To:Reply-To:Content-Type:X-Original-From:
	 References:To:Subject:Message-Id;
	bh=CF8I6mm2C82O6aDlruBnLWHDYMedI3lnkTWc7jkYfLQ=;
	b=5E6zYMtjZXrrOXzDM7e/WO5U3bvvTeaYWsWgWQ+7Cotlsr9wi0qlzsWqjstAve7eIZl3
	 yADNZEJoBp5MUs2q76J0/cLGWpJUtP8DoHfFyEEUSmr+SmsP/lr2AElftCDDWDwzPOwks
	 M5HEgkNtBObHr1vQhXTsKL/RRrj5R33+UjBBm88qSO+lx2XFniQHXhb4xtxPTQLAd8azN
	 y5Sz5XD/0fjVZp8Pu/VW6UX9JXk/M7ptvspOCo38KuoBb6hn5ubmHcup760Zd85+CoLlr
	 HFUitSx11rT12p0P1wqqvNkeZBV3aYjmnAFuC2Oh3CeVXZKn9aw3xo5Wb8hmI6aGI4w==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=UA8Op5PU;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAC47606A31D
	for <keys@linux.kernel.org>; Wed, 28 Oct 2026 02:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=UA8Op5PU
Received: by smtp.kernel.org (Postfix)
	id 86F711F01825; Wed, 28 Oct 2026 02:10:58 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.127.231.26
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793153458;
	b=tGu8NFkxChQcunYhMeKt0qwOTTZPDhNQA6g8P61ab4NZBXFGevBbQN2oQj7Tlivxw+m5
	 kJGiJeYxifJidMpy62CGgMcSlNqNTKNLBoMSOvfDfdDPuaQ+ueMIEmlPiUlVcaWwvixUd
	 xg9TADYQIvpmEX5bnbs3/3hl4UC8POJiXQRL0eutVI8MISnwMszT6jspw4FJB2GJw9iwl
	 6MRBkqedO6WpnPEQ//U0gFRudngP+DmNKMdv63v6uP8qdoyrD+RErOEcql1cr6IDvlkbO
	 0oQGz/I0fQHKzspjLlWclEd+JQJHBJb4OonWKF0SqK0E8oMzULnv+HKlqo9qolTB9Zg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793153458;
	h=DMARC-Filter:DKIM-Signature:X-Lms-Return-Path:
	 Content-Transfer-Encoding:Received:User-Agent:From:Date:Mime-Version:
	 In-Reply-To:Reply-To:Content-Type:X-Original-From:References:To:
	 Subject:Message-Id;
	bh=CF8I6mm2C82O6aDlruBnLWHDYMedI3lnkTWc7jkYfLQ=;
	b=ugWaaadAoNDJyYBxJzrDC95SO3P6kJ4V/S5HZCnyjuqTnY1WzturkSqALMylplQqGKpJ
	 CgsaHS2+ulzU+2KlV8gNeXdC1Ru+//mg5+Kn+43v7jZ6bS22b09Jaro7jroHv9uZ3/mmX
	 UjB+Y+AI2r+AUH/6mtfG25edhwQ4yHreEjws2F1wLxNI+NCZAM0Ng3j8JJz0lk+BOYGfV
	 pVwBsozp7OqCm2nmEkv5NLVuL66jd5MRGlHDW7ULCP+GH0WbfXan/fmvydsfgos3Qn2C0
	 bR7k4GGNgQKOy3fG9dlfcIk12SJD/Nb5EWwYbvaW214hld4tc/7hXrxkGRd0LIbciOg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=UA8Op5PU;
	dmarc=pass header.from=fygo.io;
	spf=pass smtp.mailfrom=fygo.io;
	arc=none smtp.remote-ip=209.127.231.26
Received: from va-2-26.ptr.blmpb.com (va-2-26.ptr.blmpb.com [209.127.231.26])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 5A1991F01829
	for <keys@kernel.org>; Wed, 28 Oct 2026 02:10:57 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=UA8Op5PU
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 5A1991F01829
Authentication-Results: smtp.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fygo.io
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=fygo.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=fygo-io.20200929.dkim.larksuite.com; t=1793153448;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=CF8I6mm2C82O6aDlruBnLWHDYMedI3lnkTWc7jkYfLQ=;
 b=UA8Op5PUaOkiq44qfuPbcH+lAYBcWhTygEAxIhFX4T1Y37yrE2dQO32nYqVdY3p2jKJGQm
 9PbuzUMMyqLh/ENva5etYSDsY0tRdkPBQwnniLwIQ4wrGMphLOm8LyhY90XQuw4vSMGPcs
 4BTk4zGIl+a77ib78XrG9ps2j0JnfECkF+tfAnumQVJ9uWSvvyBRD8f/zB7fr+vbPfP+cx
 P6PdtO4VFo/fqLxj6Sk1UxJNevz2gCgwNVQHI5zSipYNg3EA9B83jbVlSJOTS96huEc4Ck
 c9UNR/k2/LyVBMMl+0YKr/6nBBp1jWauUI9Oy0JWpI2G/o/97n/AvDEFhcASng==
X-Lms-Return-Path: <lba+26ae159a8+0a37c8+kernel.org+yukuai@fygo.io>
Content-Transfer-Encoding: quoted-printable
Received: from [192.168.1.104] ([39.182.0.25]) by smtp.larksuite.com with ESMTPS; Wed, 28 Oct 2026 02:10:47 +0000
User-Agent: Mozilla Thunderbird
From: "yu kuai" <yukuai@fygo.io>
Date: Wed, 28 Oct 2026 10:10:43 +0800
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
Mime-Version: 1.0
In-Reply-To: <179311051271.1330982.6200481376081225565@kernel.org>
Reply-To: yukuai@fygo.io
Content-Type: text/plain; charset=UTF-8
X-Original-From: yu kuai <yukuai@fygo.io>
References: <179311051271.1330982.6200481376081225565@kernel.org>
To: <keys@kernel.org>, <yukuai@kernel.org>, <helpdesk@kernel.org>
Subject: Re: Your OpenPGP key C3D74C45A008E5D5 expires on 2026-11-18
Message-Id: <12cd80ad-e46f-4ee5-bb71-3b5c275d0d23@fygo.io>

Hi,

=E5=9C=A8 2026/10/27 22:15, keys@kernel.org =E5=86=99=E9=81=93:
> Hello,
>
> This is an automated reminder from kernel.org. The OpenPGP key we have
> on record for your kernel.org account "yukuai" stops working for
> signing on 2026-11-18 03:43 UTC:
>
>      8D9A44C66C01B667529F6251C3D74C45A008E5D5

Sorry to bother, but sadly I can't extend my original GPG key's expiration,
because the original OpenPGP keys are lost.

Fortunately, I do have ssh public and private keys that is generated by GPG
authentication subkey, and I can use it to access git trees like pushing
codes.

My question is that can I still use the ssh keys to access git trees after
GPG primary key expires? If not, is it possible for me to create a new GPG
key?




>
> After that date, tools like git, b4 and sq will no longer accept
> signatures made with this key. You can fix this by extending the
> expiration date of your key. The steps are described here:
>
>      https://korg.docs.kernel.org/pgpkeys.html#extend-expiration
>
> When you are done, reply to this message with your updated public key
> attached. You can export it with:
>
>      gpg --armor --export 8D9A44C66C01B667529F6251C3D74C45A008E5D5 > C3D7=
4C45A008E5D5.asc
>
> Please note that your reply goes to keys@kernel.org, a public mailing
> list archived at:
>
>      https://lore.kernel.org/keys/
>
> Only send your public key and nothing that you want to keep private.
>
> We send this reminder 30, 10 and 3 days before your key expires. It
> stops once the kernel.org keyring has your new expiration date.
>
--=20
Thanks,
Kuai
