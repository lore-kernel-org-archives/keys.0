Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E742F877
	for <keys@linux.kernel.org>; Thu, 18 Jul 2024 16:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.133.104.62
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721319561; cv=none; b=NdgPhAo1RtfzjYvXRako6liD1s6sFQu5y58be9rmWqyu+4hIM+IB9a4UwhmPltX90vLWqVZFYBUOpxWHjfTk9XKrBD2AYAbcwin/fu+zAhrA68S/If2UjCx1KgX6ko+u674SWc3EGDEQqPjTpRHHLik5vGqXoaghoPUpjIr4F5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721319561; c=relaxed/simple;
	bh=VJBdCtBv3+PPZAxbAITpPUFOG815cy9V5TeiBmhuSjw=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=YShQfOEJX76IW3zia2jejpepRthLlKoS3SawNASoULVf6FrVmqmuy+N9K76gwWL9TdY2pvhUgwBWFzBoB8UohuS8wu4CSYT0/q8jivVtBFkty4mCzVOb2mSxPcPxYzQFOG1yrx6xWAEiEB1liDNsIpST1P3g4FF17GPMsW38TqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iogearbox.net; spf=pass smtp.mailfrom=iogearbox.net; dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net header.b=cPCONxSB; arc=none smtp.client-ip=213.133.104.62
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iogearbox.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=iogearbox.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iogearbox.net header.i=@iogearbox.net header.b="cPCONxSB"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iogearbox.net; s=default2302; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=AmoRjwr7CnJbAp+eAmNqyhwhtkzU5fdBWJcNhAFOoHQ=; b=cPCONxSBdVcQ1fVNgwgG0o43Z6
	zKchnuX4Xwm5lwG65SHXRsg579cFn2vrTqa9pOrK4rWPXsHYEVTQpCWS1XDkL1aJYBLpuIdCKF4k6
	V2nKHabNSyJiylYZzfsxyzi0Fr4sxLpdpUe14nDT85mL++d1hd60/QdxfFnLbAuKL2lBUJ4f/rjwm
	fJhfl/wiE0aDPtvJm4llWDQIhtLxNIbpvuRsNHK4eBwqVwQsKyI5loumAGuw1/lMdOJED5yzkNzJG
	VkGx03wGbs3OXTibwl6j/3jG7zAcEuaQB2gPrsIKi58Irbv77qBa2gl14N/CCTgRgICt5oVbJRUlX
	/gcw74Fg==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www62.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <daniel@iogearbox.net>)
	id 1sUTqe-000EUx-36; Thu, 18 Jul 2024 18:19:16 +0200
Received: from [178.197.248.43] (helo=linux-2.home)
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <daniel@iogearbox.net>)
	id 1sUTqd-000Gwb-2D;
	Thu, 18 Jul 2024 18:19:15 +0200
Subject: Re: daniel@iogearbox.net
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
References: <653fef47-6df5-6100-c65e-52655e88aa57@iogearbox.net>
 <20240718-fast-sage-turtle-b5e4ad@meerkat>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <a1a8795a-f978-e9f7-088c-fe606d08b1bf@iogearbox.net>
Date: Thu, 18 Jul 2024 18:19:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240718-fast-sage-turtle-b5e4ad@meerkat>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.10/27340/Thu Jul 18 10:26:40 2024)

On 7/18/24 6:09 PM, Konstantin Ryabitsev wrote:
> On Thu, Jul 18, 2024 at 02:50:18PM GMT, Daniel Borkmann wrote:
>> -----BEGIN PGP PUBLIC KEY BLOCK-----
> 
> Unfortunately, I cannot take it as-is because it's only signed by your own
> expired key, so the web of trust doesn't work out.
> 
> Could you get someone else with a current kernel.org account to sign it as
> well?

Ah sorry, my bad, I'll look into it. Thanks!
