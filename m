Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8611F891C
	for <keys@linux.kernel.org>; Mon, 21 Oct 2024 13:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729517901; cv=none; b=OpI7EaHmVd1qaRa4Smel+XBqBB9I6pyapBBQKQAqpr9/solnhxH3MQCfJnewzSahzTPKKPzrj3J8/tnBXVNle1stkIxRPuYAN/KPh8Cs4q2KSQVnZQwPY3K0qR62v1Ii01GGjIKNbjqLxZw0ReeLqmveYHMXBZvQ4+ymXT7Kxw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729517901; c=relaxed/simple;
	bh=2ldTn9Z3CTgiFEkGwArQKmcPubdwH35APcQl7oqPEbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kHBoEtmRWTu6XokGkLU71/4qlQlKJ7yUrb73W3wCeejRGDF/TsFi7W8rNaS/yy/dXVEFuY3vnBIY9GPDVBQL7h8ldH5oBSrASNCagT9a28BOWfgG+2y1GOmJtFaotbdpKKAVv13J/7nLkBLBkmRu7aaVegfpj9DTexJuFkqfNAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=bj13jbRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="bj13jbRD"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDFB7C4CEC3;
	Mon, 21 Oct 2024 13:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1729517900;
	bh=2ldTn9Z3CTgiFEkGwArQKmcPubdwH35APcQl7oqPEbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bj13jbRD+fT5JEybYsUM68YDdDFxYrMkQNWTZUrMRZMK5LOorLbQnoTbrrvLKd+Pq
	 0Ljjty8ZktaG96v6bsd9uGzUfjX4Kt7xHIVCWs0ITpPayj2FMqSyYX1sJ3ePOq9lxt
	 yDR9JU47VFMb+ZEoNvOMllV+yWLAGni4U649h/ZQ=
Date: Mon, 21 Oct 2024 09:38:18 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Add my key
Message-ID: <20241021-meaty-ivory-platypus-48c14b@lemur>
References: <nxmur7ve62ocgjit5hs54lck2dktljr6tfg3qvouquhypb645y@k5sw35pi2dbs>
 <20241015-important-moth-of-chivalry-f9bedb@lemur>
 <f2yjsbtqgb4owikpezrwfjv5mhc4byqedzuozflyz7xwfjvvlw@7pnibsevrk5h>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <f2yjsbtqgb4owikpezrwfjv5mhc4byqedzuozflyz7xwfjvvlw@7pnibsevrk5h>

On Sun, Oct 20, 2024 at 08:33:55AM +0200, Markus Schneider-Pargmann wrote:
> I now got another signature, which I think is closer to Linus. Attached
> is the updated key.

Yes, Kevin's signature is enough to get you into the keyring.

Added now.

Best regards,
-K
