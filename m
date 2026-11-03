Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793742063;
	b=Y7/4gn9nZkgI3okSpEHgwQnQwXpvSE0cGdbEsO3rJjZ5b0gRTfSni4//gYLn8osvN7hZ
	 BBGijtTjOBUP419OZXjMHBweCo03wwjEbAAR9F5AMASYhQFNKhoWvBmBPrYGs97Dpuq6u
	 c8AL6zGCaeub6SjNc3acYepGuHdZajk1cAB9eep31jrYzwxDPdxnVUIbeuNkhC0/Fs7GB
	 s3bJ6wDkl089re0g42GGft98J8X+3a0K7sUBBOu/FdwxlbpPdBEWLu3dxE6SxPsnRj04H
	 gIGsFPAfYBbc9jc++jkrG0SHSqXPlxlmZ2me82r5V73VQfKW9zOslyMXZti6IZ+PiNA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793742063;
	h=Received:DKIM-Signature:From:To:Cc:In-Reply-To:References:Subject:
	 Message-Id:Date:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 X-Mailer;
	bh=CGmjDXBfvMfy0fT9KIaSadB5ieH9giidsrA/2I2YXaY=;
	b=BAu1wxn8E2uMk1Uqq5ISW0i/KalcawPl5NiF14nM8Len/bqPPFJA5RSmAQXkCI7FTFJW
	 YfB7CcjrhD0LmApLAG+hr1+txm28G+f91uqdUMogde8GqnNggxepIC4byJsT8z1vxOhAz
	 NL4gXrsD+2Muh4e3IKd7TyAmOcXuArbLiuf6bh+dfYOoF3G+IWMQ45tgiJ4N7egOxK6In
	 Ney30/4MNudZwjccttPjbwv3z+BVhEFSCpjHPEKAooR/0zflehKKLwFM8ozwdPIc3SQ8f
	 gQWOHej4pX5VwYF5Eh9rSJgDqBg6vmCRGtuUhWb3unaC5+KwCKMFCgHseNN9rZUmRMg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=AZHmkd0i;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28660606A31B
	for <keys@linux.kernel.org>; Tue,  3 Nov 2026 21:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=AZHmkd0i
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AB851F000C1;
	Tue,  3 Nov 2026 21:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1793742062;
	bh=CGmjDXBfvMfy0fT9KIaSadB5ieH9giidsrA/2I2YXaY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=AZHmkd0i/6FHaFncPm7odsP2r1l/av2xwoLwMUtGZQJpdA8DaIn0UaFRz/hFqHUgI
	 Wk4BzL201jW/2AGv2lMSLlCcZmChwmg3jS+ofnZYF2PbG3Gz/9vUTto1IfgHksZqGA
	 79TJkhVdDN1ZYTRsKijagm4W3c0vjNkoVokvCLtA=
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: keys@linux.kernel.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Inki Dae <daeinki@kernel.org>, Daniel Wagner <wagi@monom.org>, 
 Janosch Frank <frankja@linux.ibm.com>
In-Reply-To: <20261103111832.426885-2-u.kleine-koenig@baylibre.com>
References: <20261103111832.426885-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH] Drop the signatures bound by SHA-1 that were added by
 mistake
Message-Id: <179374206164.1492835.15816225867538160.b4-ty@b4>
Date: Tue, 03 Nov 2026 16:41:01 -0500
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.17-dev-ce4c1


On Tue, 03 Nov 2026 12:18:31 +0100, Uwe Kleine-König wrote:
> These went into the keyring (or were wrongly kept) between commit
> 197f700ffbe9 ("korg-update-pgpkeys: keep SHA-1 certifications when
> importing a key") and its revert in commit 848775a173c1 ("Revert
> "korg-update-pgpkeys: keep SHA-1 certifications when importing a key"").
> 
> This affects the following certificates:
> 
> [...]

Applied, thanks!

[1/1] Drop the signatures bound by SHA-1 that were added by mistake
      https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=4e74d032c4bd0068d381aef8128886bd29ae1163

Best regards,
-- 
Konstantin Ryabitsev <konstantin@linuxfoundation.org>

