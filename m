Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793394810;
	b=dbyQU39R1wLB1JZLt9bCRIxc2AMQ4BBvXKh+RQBNy+YKY4uyD/P1fuxduhG94S1pywX+
	 lbie9h/lc9KU7bUu3spxU6i91CMKqBJT4P28QvfXWJfrKpAFZVD9p2nCueKPf741njrDa
	 71ePmerzi6tAo9nQA1fMjTnzxApzoD09TxAlLLR+sWZ/AqmLPqxxk7amv9qWkotJo8JSg
	 QNf86gVZnjua/tGA6UVlCYqGo1Mjh+nzXXvMxshTnK9uGO/8PuUER3hjPhyW++wBMX9+m
	 ipPAzIWcw3pAvQYdL7jRbQU9Qb5Y+I7v+DaL6GkB/hYt9dJ/L83eZzFI6N6LWZydWGw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793394810;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=+Bj4sab9D7rlIdhXG2yRz0Ex7SHVH3PcV7VwAHuzF1I=;
	b=e39KIA+7wYPLHmmBgPfhtSLmqx053m8rfVoUeW3lsHmyzQI3Rfqw0al+52U/LYDwCFY5
	 CNaJdaaG8IVNPcDtTfb+ZSCyPxCVe6Nt7rRVHXgm6kfXHkgJIdi42Op3yKuzwO1vf762V
	 gJs2sBeQLzS5K0h7LT1H4/LN52lClgLJLdXMMtA84yTqAZKtKHGwythqhUlCWV/CVmj/I
	 arPpPTTbrPwmvYOBd7F/tZJOzODyKzcIajULgptMvzhMJBxFIaGwncmkexYXEIS82gIWq
	 HFcR7PvQW/GITQ48bTy0sswpHXwklBXLrvrUQ02VJuB2GI3aAKHlglefANI+R5YJ1RQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b="Hyn/RTCZ";
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AF0606A31D
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 21:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Hyn/RTCZ
Received: by smtp.kernel.org (Postfix)
	id D45C31F0093A; Fri, 30 Oct 2026 21:13:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EBA61F000C1;
	Fri, 30 Oct 2026 21:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793394809;
	bh=+Bj4sab9D7rlIdhXG2yRz0Ex7SHVH3PcV7VwAHuzF1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Hyn/RTCZIMYRl471YSJWVEOEI1TxLHZ19ThBh0SMS1gkwce3i123Pwe76YG8bjidE
	 of1+Y9hmHPhDhU2FxUN5t3kmIIY4MXYClNry48AO03opSivLtLTyrxgl6gErtWE11X
	 Y48/VfQmoBD1FvaH9/SjDFDsT7Ux6CUgQIORJX/lHsjfycVfJJdTRrcmkWBXlzRDQg
	 ZS+8Rd7tUP3NOf3n7V5nnayh+UI7t6+6Wh0L2oJAUDQkiKKqtd2Qc4zjirk/g8dHpl
	 uKtu3anwAraJJiFJg9TlMmbOQCLuBiY2hdxkU3OYj5UCtsTAKcs+lCJI/UamnnemjF
	 cjzSFbp8JQSoA==
Date: Fri, 30 Oct 2026 17:13:27 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: keys@kernel.org
Subject: Re: Fwd: Your kernel.org PGP key has expired
Message-ID: <20261030-ingenious-smoky-bat-4f68d4@meerkat>
References: <20261028-augmented-messy-prawn-9c4aad@vache>
 <CANLsYkz0+q+erQrH3Rumst0+E5L2ZS8ooe-VRfdYZed1aZ=Q-w@mail.gmail.com>
 <20261030-artificial-weasel-of-leadership-2befa7@meerkat>
 <CANLsYkyGyVnaLTgPU-VoVKJfZBBjxn2xNT2+DwoVQJUiYmrXCA@mail.gmail.com>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CANLsYkyGyVnaLTgPU-VoVKJfZBBjxn2xNT2+DwoVQJUiYmrXCA@mail.gmail.com>

On Fri, Oct 30, 2026 at 02:51:29PM -0600, Mathieu Poirier wrote:
> Trying again...

Looks good now, thanks! Your key is now updated.

-K
