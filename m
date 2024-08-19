Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BECC1DFED
	for <keys@linux.kernel.org>; Mon, 19 Aug 2024 15:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724079614; cv=none; b=m/ZGWQfenpoKbkakqMEVNhTsS1FaVOoHeRpMzHiPRmZbmWHqadL6WlJYSlnQLj8JUn3DSNR7RiHgKZmXT/uEofzHKlo1v5gZeJ8WB/OTPt7y7CIT9PcWsX6zh8p+FZM0HCBVppAYNIK4MnTE/TzqmYqFL5ow3zBjBNdhFT76CHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724079614; c=relaxed/simple;
	bh=z0LUS3YOH00JXSEV1EwM2B+5pwQnxQ/4Az0xo7d7ktk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uq2nVRMf1pVrQIM1Q9cRlrSnj/S6tTuTMhQ4LyFyEq/7O3LEE0A+Qz1d11hwy2hAQHSlyzO0YHVKdsJSLiu5IQlvtcb84yjUzTeIiLRLElNxJMwEpQSDsvsl/CuNSOZh1mAsbC5wyuN6iD66ngRZUA/S44clOmA3CHt5jNK4q5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=V7zdTHvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="V7zdTHvm"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE1FCC4AF0E;
	Mon, 19 Aug 2024 15:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1724079613;
	bh=z0LUS3YOH00JXSEV1EwM2B+5pwQnxQ/4Az0xo7d7ktk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7zdTHvmMvcyjHdRtQIY4K1oSNhkkbcaoF0zzWV9zC67ADKm2RQQPmC7r4FHleih1
	 shcdhbA0PE/PNxGuTqnC3Y10pKmsZ6GBNYFLnpLDxDAm9Fe0UdmLLAjA7ex8eEf2cx
	 zwfrxtknFmIFZBBV3imHi3K4D74rIfwPWwxK5UAk=
Date: Mon, 19 Aug 2024 11:00:12 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: keys@linux.kernel.org
Subject: Re: New GPG key
Message-ID: <20240819-majestic-logical-galago-dcd95a@lemur>
References: <87o75pp2bt.fsf@mail.lhotse>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87o75pp2bt.fsf@mail.lhotse>

On Mon, Aug 19, 2024 at 02:24:22PM GMT, Michael Ellerman wrote:
> Hi,
> 
> Can you please add my new GPG key to the repo.

For the record, can you follow up with the reason why you're replacing your
main key?

-K
