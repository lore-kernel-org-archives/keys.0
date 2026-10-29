Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793262173;
	b=LUHmPBxLGXyOA9GbvEnv5AieqqWPyokiqKXcPqG67Vg5BxnhRumjAs0PMp8+1nMipKTy
	 S7VwNAlzFbMR5hDBCISj9pgD+braw5qjtUxQ06+qmFVfY0Jt1dp0qhCT2sH6RQnZQnza0
	 wAWVcxzSQi/0Fb5LmbH/TQ/zmvnAdZQ9IGz30wIH/Ya/3C5gASmHaVJ79qSCGz3tbhlnh
	 iR4IrZ6IZsEqTs+GSxVn5Ucmcm3/wzIvSMD0bpx5Cun1qWhpPhKJXBAYNbnKyYwF0ONHt
	 BsaE/ja0J33JTm94FfvhXOhjAkKLJMoBjnfTM43Mngt0DauZ43S5s46IAq8ztRIVrPw==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793262173;
	h=Received:Delivered-To:Received:DMARC-Filter:DKIM-Signature:Reply-To:
	 Cc:Message-Id:In-Reply-To:User-Agent:Received:References:Subject:Date:
	 X-Original-From:Content-Type:Content-Transfer-Encoding:To:From:
	 Mime-Version:X-Lms-Return-Path;
	bh=11OUnFQCodaSAKNSvrS7y1W2PUlg+I5RRF0xYUlyY08=;
	b=nbioKFbh3vGIL1O1dD2/tz4TKZ+JF5j0eoUI9/HusYsfTpu80GJqdpgRWPzLrtVfF+vY
	 m0w2uZgGQxzx9Ji1729gSdh1Fp8AObVdidmUVOIYC/0NtHT7X8PJxA0S3fHHZ3Xzj+pdj
	 TWjVvBDHCN9cj86FMpFw4LKbMpCmcVv4nzFK8gY77w17IzG7jzTGOl4SHd1fk8JojbPE+
	 tDHLYDlm6ihHpYST5B+zZgx7v/DqPwPVc4BfQ9JRXPszddCstO/V66Zwi/ksSW93B1WuT
	 xKtRzb4ZgUnHVgMZ21NOMxNTZBVbQRVXNbecV3I/AmA9PN2d9H/s+pLfbBiR/tXeNpg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=RDA+vKAa;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21675606A31D
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=RDA+vKAa
Received: by smtp.kernel.org (Postfix)
	id 1367E1F01829; Thu, 29 Oct 2026 08:22:53 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.127.231.39
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793262173;
	b=RCglBmKBN0jZMMge1mvQOhBnHh/EVGJxyIspp21XysulpGmEb1qYW6kdoV/5LsglkMmA
	 O8Z7Ep0Z09spxVNz4oTuOdY74byYS6UcuizwcW/XdIGxPOyWib+tvf5LKWdN9e5cXjROO
	 AKOu/6YKJCR6lV2rS3W1QlscKoojQ7Wht+ZaAyZUmuMMXMJ7L2wGbuwa9W8+R0tlX0TVN
	 FGbl6DI/VC3WNBMYnMnu/LTZJBe+JYSciAH5l3cQg1gzXhhohKvbEg9Lw2NzIikmrwpn/
	 gVAbt7Zr6Z2haDbTAMHI6Ty1jR2KnTSWBwR+gD6MrBfteWFvWhl23IsId02yopt6jYg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793262173;
	h=DMARC-Filter:DKIM-Signature:Reply-To:Cc:Message-Id:In-Reply-To:
	 User-Agent:Received:References:Subject:Date:X-Original-From:
	 Content-Type:Content-Transfer-Encoding:To:From:Mime-Version:
	 X-Lms-Return-Path;
	bh=11OUnFQCodaSAKNSvrS7y1W2PUlg+I5RRF0xYUlyY08=;
	b=dvGV0jpbShr/bzfqGl5L11+OVeEoFidkKOdr4Wsea3VsF98jrRVzXN+0ShUoniF4I1Zf
	 HprLwQ/xGbBy3F4QXgOcLw9n669R+okDIQ1O42QdhViVqjK27rb3MlG9V+deAI5Vd+kz3
	 e/GCIC9KkfyBypR7KLXNUx/WDpZYVrvJ3e2MHkmyhkY2AxIF2mA3lhpwGPFL+5gBn/Exv
	 AsJ5Z3aVMPMvnYq53onGeovTWbw21ZVguJdvm7Uf/atbQCk0SIegrWnyRAbbl8xuhB1wU
	 03zeO9ZNfbR4/C+JSupaQQHwC5t00bhUcyxanbC9+vtoATwLDQ+AWpSCAzFZgBm3XzA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=RDA+vKAa;
	dmarc=pass header.from=fygo.io;
	spf=pass smtp.mailfrom=fygo.io;
	arc=none smtp.remote-ip=209.127.231.39
Received: from va-2-39.ptr.blmpb.com (va-2-39.ptr.blmpb.com [209.127.231.39])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 8CD721F031EA
	for <keys@kernel.org>; Thu, 29 Oct 2026 08:22:46 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=fygo-io.20200929.dkim.larksuite.com header.i=@fygo-io.20200929.dkim.larksuite.com header.a=rsa-sha256 header.s=s1 header.b=RDA+vKAa
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 8CD721F031EA
Authentication-Results: smtp.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fygo.io
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=fygo.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=fygo-io.20200929.dkim.larksuite.com; t=1793262157;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=11OUnFQCodaSAKNSvrS7y1W2PUlg+I5RRF0xYUlyY08=;
 b=RDA+vKAaawU7cONhbbtsVgKrsJDy5OqTk9jN2m4DcBTAhS3g8hk9th3Q7uxCFvyxPUigvj
 X3WUKFdYMq1Fl+SUxGVwNQ+wJJiJ3+c1dwK+cia3GMOLvv4RCtI8PKBQWjXnb+MbdfBMuE
 efMDG02T2oB4ggKE467oLX0nY72DAEKeO6JWpNrzg3d3rX1uaVJZiUgEsInek1LOFCuZDR
 V2ZEw0/mG7hDZSR6V3IcGtcrMAmVw7ox2h3eNtkPU9cW+FVbj7yING04h/2or1d8o9OhZG
 8vOcXV7uG2XV2cNKQTVwB57xIbIUupm5MH9PiwRuzUKxHpMtweczQKISgbz7gA==
Reply-To: yukuai@fygo.io
Cc: <keys@kernel.org>, <yukuai@kernel.org>, <helpdesk@kernel.org>
Message-Id: <d18055ae-59dc-40c9-8446-fbcdcc02bfe4@fygo.io>
In-Reply-To: <20261028-lumpy-tasteful-curassow-99d6ef@lemur>
User-Agent: Mozilla Thunderbird
Received: from [192.168.1.104] ([39.182.0.25]) by smtp.larksuite.com with ESMTPS; Thu, 29 Oct 2026 08:22:35 +0000
References: <179311051271.1330982.6200481376081225565@kernel.org> <12cd80ad-e46f-4ee5-bb71-3b5c275d0d23@fygo.io> <20261028-lumpy-tasteful-curassow-99d6ef@lemur>
Subject: Re: Your OpenPGP key C3D74C45A008E5D5 expires on 2026-11-18
Date: Thu, 29 Oct 2026 16:22:32 +0800
X-Original-From: yu kuai <yukuai@fygo.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
To: "Konstantin Ryabitsev" <mricon@kernel.org>, "yu kuai" <yukuai@fygo.io>
From: "yu kuai" <yukuai@fygo.io>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
Mime-Version: 1.0
X-Lms-Return-Path: <lba+26ae3024c+12a02f+kernel.org+yukuai@fygo.io>

Hi,

=E5=9C=A8 2026/10/28 22:31, Konstantin Ryabitsev =E5=86=99=E9=81=93:
> On Wed, Oct 28, 2026 at 10:10:43AM +0800, yu kuai wrote:
>>> This is an automated reminder from kernel.org. The OpenPGP key we have
>>> on record for your kernel.org account "yukuai" stops working for
>>> signing on 2026-11-18 03:43 UTC:
>>>
>>>       8D9A44C66C01B667529F6251C3D74C45A008E5D5
>> Sorry to bother, but sadly I can't extend my original GPG key's expirati=
on,
>> because the original OpenPGP keys are lost.
>>
>> Fortunately, I do have ssh public and private keys that is generated by =
GPG
>> authentication subkey, and I can use it to access git trees like pushing
>> codes.
>>
>> My question is that can I still use the ssh keys to access git trees aft=
er
>> GPG primary key expires? If not, is it possible for me to create a new G=
PG
>> key?
> There was no policy around this situation, but we are working towards
> automatically disabling ssh access for anyone with an expired key. While =
I can
> temporarily hold off suspending your account, I strongly recommend gettin=
g a
> new key and getting some signatures on it so you don't lose push access.

Thanks! Please hold off suspending my account, and I'll get a new key soon.

>
> You can follow the procedure described here:
> https://docs.kernel.org/process/maintainer-pgp-guide.html
>
> and
>
> https://korg.docs.kernel.org/pgpkeys.html
>
> -K

--=20
Thanks,
Kuai
