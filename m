Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789842512F1
	for <keys@linux.kernel.org>; Mon, 14 Jul 2025 20:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752523757; cv=none; b=MhLefpSq2HkS5AByfiQwnL0tZ+IU5LaV1OAbysZ+b2Ub2PLA+/pjciUWNIcfe1Jn2k7BM8sFaAlbTrR6xHLVe2Wk+WRJ2UO/OKKP/RGsZsH2sBjC7IOBInvmT0jsXdFGz6m6qCl7ouROxPcUb15oMhNrRxPVM/l7skn0c1yLwp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752523757; c=relaxed/simple;
	bh=a16eyu8gZrJXIuTajXWk3gFM3ZIabF2/Q7etKNYPBaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qRi1EGl9a1LbA0ZjZLnQs2Ge6xmE5NAA/jor2J0oZCHuL/27A4+5cmH63mHy1f30oI87dsNs9OaklJ22bN5e6utj/Lb5wxDGNnORzhc/h8uVR5pR3P9PVN5hN/xtld0WbB0YNu9rxMjmJD3PvHKZ8xHzN2Cubu/GloKHb3ILPQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=dHnYKbSE; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="dHnYKbSE"
Message-ID: <6e44b957-1233-45d8-90a3-d6e0f5a46aa5@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1752523752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=a16eyu8gZrJXIuTajXWk3gFM3ZIabF2/Q7etKNYPBaA=;
	b=dHnYKbSEcmqiY43HkpZ5NvSq1o9VCcNUzZDc54v3oUEt6qHIbTKJIJBJ0eyiCQaOmteTed
	WortEYy4R4kZ/bVGX+K6spxSrAXDmjhTz1JjMcv9xAv1584XboeXxkOcXePXAXUXa7BPMz
	IcyrxywynZx9z9XhrgBYiDFAdFD5Q+0=
Date: Mon, 14 Jul 2025 13:09:08 -0700
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Subject: Re: Please add key for Vineet Gupta (ARC maintainer) - updated
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
References: <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
 <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
 <d622b123-1a1d-490f-b008-6e68954b0dda@linux.dev>
 <2bcs4mgkrycgqfydfxt3cucw2cd6vvbpq3snbsprf27fyc72hd@ihikzjxerftf>
 <44898d39-ca32-48e4-a7eb-8f572c12c488@kernel.org>
 <ff756e69-1a87-4c2a-91a7-e683439c2600@linux.dev>
 <31ef5a98-dcc0-4313-966e-231a63907f12@kernel.org>
 <20250714-serious-divergent-gaur-5aa55c@lemur>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Vineet Gupta <vineet.gupta@linux.dev>
Content-Language: en-US
In-Reply-To: <20250714-serious-divergent-gaur-5aa55c@lemur>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT



On 7/14/25 12:41, Konstantin Ryabitsev wrote:
> On Mon, Jul 14, 2025 at 10:01:50AM -0700, Vineet Gupta wrote:
>>> PFA attached my key signed by Anup Patel and Alex Ghiti, for inclusion in the
>>> korg pgp repo.
>> Ping !
> I've been out for 2 weeks, sorry for the delay. Your key should be updated
> now.

No worries. Thx for getting to it.

Cheers,
-Vineet
