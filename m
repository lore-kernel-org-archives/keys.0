Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E704C18E3F
	for <keys@linux.kernel.org>; Mon, 14 Jul 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752512515; cv=none; b=LaFGhsgoBAi8aWJbdeOImtxbuoRoDtZd5j2ANyHefBO9JiXt2CNJICp3NCGN1pMrRauO4RE01ATEi+F45+VtDyXC4d4V0MK0KZV7LIaYe+h2sLptb1dL9lN/GQqKa5opYyKtiWMS3hNkZJ4PmA0h+xZ6uM03Lhsn5vU1sUMZBWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752512515; c=relaxed/simple;
	bh=YumHQ9p7QOMfcxgCdM/qWtmsorm5vi1y1szFrOWUDHY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=GMAlE8KDKpPcT+1JgivK8AznJCuKkcZc9zyeTXDEQqqDbHwto2youFL2+kgQwG4WXjrVDqilQXqm6XkwFiDXQ6YAJTb7BQjxadeeccOs0LZbyXYkWlRISf+dh9XGFdHoudICKogbhmEhxTLR1MP6v1AE0Fr6qhuK/NcsX1ScbO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufyBw9ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufyBw9ah"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DCF7C4CEED
	for <keys@linux.kernel.org>; Mon, 14 Jul 2025 17:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752512513;
	bh=YumHQ9p7QOMfcxgCdM/qWtmsorm5vi1y1szFrOWUDHY=;
	h=Date:Subject:From:To:References:In-Reply-To:From;
	b=ufyBw9ah4fYQYU9gor+LLlVvf6V8L+6FOgTqEEbnMlOgGmnSJb4F0ctyX0ur8y8cR
	 /1bgHmpXOz4eREUY669UL+OGV87L2wCHIH6ncHyF7t9QjlU/HD3/ZU78a2wEkd4VlY
	 g/4b/OOlCsoLMduKfkqMNRoh6oeleWkacf1X+8qMOL2ryOYqnl9Ve63j0fX1DZ1mpb
	 obGEfk8kUaoD+5wuOysAgXEtlfk7gQqbryIQ7aXpTSr2VPIHlkXGcMTiczfN/EkMdP
	 T3om/mUFPLc4+5+j6bEajhtm6B7YxfD7WhWP7FkRAPDxjXul90i91W5ZsTyVPwGfXj
	 UtFG5vGvGQmmA==
Message-ID: <31ef5a98-dcc0-4313-966e-231a63907f12@kernel.org>
Date: Mon, 14 Jul 2025 10:01:50 -0700
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Please add key for Vineet Gupta (ARC maintainer) - updated
From: Vineet Gupta <vgupta@kernel.org>
To: keys@linux.kernel.org
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
 <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
 <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>
 <2bcs4mgkrycgqfydfxt3cucw2cd6vvbpq3snbsprf27fyc72hd@ihikzjxerftf>
 <44898d39-ca32-48e4-a7eb-8f572c12c488@kernel.org>
 <ff756e69-1a87-4c2a-91a7-e683439c2600@linux.dev>
Content-Language: en-US
In-Reply-To: <ff756e69-1a87-4c2a-91a7-e683439c2600@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/3/25 12:46, Vineet Gupta wrote:
> On 6/17/25 15:41, Vineet Gupta wrote:
>> Once I have the new UID signed I'll follow up on keys@.
> PFA attached my key signed by Anup Patel and Alex Ghiti, for inclusion in the
> korg pgp repo.
>
> Thx,
> -Vineet

Ping !

