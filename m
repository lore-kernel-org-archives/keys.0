Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DEC4AEE0
	for <keys@linux.kernel.org>; Tue, 29 Oct 2024 15:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730214786; cv=none; b=s/GHnLVtEB9ZHLgG6Q2L9xdQkz9g1FgqxyoNPGZ6ozFt8/HxOgp70X5JyyCMjYgHeHZxrotQx1w+6ahVNzd1LvxVbMWGCvBsd7Dnj56HZzWC/qoAkkgjux7OSyINUjtHO3tH/FinRL7XxStkaRM2UsZcHU28kdxzVyTmqroC9PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730214786; c=relaxed/simple;
	bh=YkdMX7LjtdK1s/3kw6No1gyP4zbco6Mhg6zhVWmeGIs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AlWGmUxzU45anI2GOSB4ema/SBbPJ+qVVBb/M34UX1+qF0awd44jVif/q7dmtzlFR+g4jNoswPVgMIb41OITz0i06cWMoql4oV9e6q/ZIp6AsYwsoj3ntgCwXMe553uRtdvhu3cx5QkUu4EyVaJxftIjRBhxvEXV6L7bdVph6nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=KlBtfD2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="KlBtfD2k"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1CDC4CECD;
	Tue, 29 Oct 2024 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1730214785;
	bh=YkdMX7LjtdK1s/3kw6No1gyP4zbco6Mhg6zhVWmeGIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KlBtfD2ksa5YX1gWnst/VYjeakGXLXwzY45VGrg1gBwUhOAtgEY/0/wMo/48ffcV5
	 E0D1EduvL0FxmYtObjlDgww2dreTuGR0JrUGGpx33zbmYAKsEO2gsXJb5I+Q7pEts2
	 HVlvs0rLk7AuNFqo3DyDbpV62evQUQz0Z+/3l9aE=
Date: Tue, 29 Oct 2024 11:13:01 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: About revoked uids in the kernel keyring repo
Message-ID: <20241029-conscious-knowing-cormorant-06085c@lemur>
References: <kh5aupxlnhnszkhs44pworjawui6mhwck6zbhsh7wssbumdtq7@yexqh3pb5h5h>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <kh5aupxlnhnszkhs44pworjawui6mhwck6zbhsh7wssbumdtq7@yexqh3pb5h5h>

On Fri, Oct 11, 2024 at 08:25:32AM +0200, Uwe Kleine-König wrote:
> some time ago I revoked one of the uids of my key. This revoked uid is
> available on the ubuntu keyserver. Still after the last refresh from
> keyserver.ubuntu.com (10e718223d7e ("Periodic update from keyservers"))
> the uid is still tracked as ok:

I just did the refresh again and I believe the latest updates look ok.

-K
