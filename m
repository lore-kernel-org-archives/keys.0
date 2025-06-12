Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335DC2D877F
	for <keys@linux.kernel.org>; Thu, 12 Jun 2025 20:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749761950; cv=none; b=m0XdxsfyKOfGsFxzy7OGjjdyRZ8vqj88B2Ebn3u31lDbEQpI2cUxHG/xKxJZWvj+eXTTyrHzadJb9olzZTY/zDstfcbG68y1WipDhjQdbWgdS8AzYtrUPX69fgPL9naMI+3Vt8QpS4Y5oDIn+d4sO5u5+1tXphb+fEUoDUNOX70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749761950; c=relaxed/simple;
	bh=w13FW8hMQvb8ndWJQokSovAQLF535IsuETF30XoohUo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I5Xj4LBhP8EF5763kp9dIhlysgP10KVaY5bzHN6mn3VfrqZ2KPwGeP7T04eXuCB81xxcR5Ap+Vfjk2hQDH5OVzcNpqkL9nB2G1O64pS4KTQoW7p+bOFd9e9IahTeJ0yDpIGrgQHWIuGFbN5SUpZT+ibSeE0Y+3tzI4CszBzp2tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRYg/2xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRYg/2xj"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9098FC4CEED;
	Thu, 12 Jun 2025 20:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749761949;
	bh=w13FW8hMQvb8ndWJQokSovAQLF535IsuETF30XoohUo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mRYg/2xjIT8qzyGO4Nl+jRw/wCBGk7HqLvjL+SCpnkC8AmR5bARGjyoq5wPYF9MtW
	 9nPNL2IF2QjjeDmZ+pLEvdKb9qFaMJ9mJaDbA1FyLUT3XaII1dIOBsuuhQ7QBx3fpk
	 sBH/3q+utc7TUJ76ffuryoHfCbFVjSdNLI1sfsZmXXUkMhxuZNLNlheextxyr0Er1b
	 EiF8t4lTrAsGBLIaVbyyNVlaNgcaLVD8Vgan/rrRCPrM3qeCiRHW5hpKV9V4f9WDlR
	 NTkWss6hR4ApGfTDkCmEDACMbmC7gTI14WMHJMy2cVM9iQ3g6N2Dd0c/sr9IcztzYn
	 bTXKrDrRxKy7Q==
Message-ID: <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
Date: Thu, 12 Jun 2025 13:59:08 -0700
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Vineet Gupta <vgupta@kernel.org>
Cc: keys@linux.kernel.org
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
From: Vineet Gupta <vgupta@kernel.org>
Content-Language: en-US
In-Reply-To: <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Uwe,

On 6/12/25 13:39, Uwe Kleine-König wrote:
> Hello Vineet,
>
> your UID is "Vineet Gupta (kernel) <vgupta@kernel.org>" on that key.
>
> Before creating your next UID is suggest you read
> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harmful.html

Thx for the pointer. It makes sense.
Shall I remove them from existing key and send it over again (I see it hasn't
been pushed yet to the repo)

Thx,
-Vineet

