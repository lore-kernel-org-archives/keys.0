Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A85D8F5E
	for <keys@linux.kernel.org>; Mon, 17 Mar 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742241235; cv=none; b=ouFdWrlMdQgYLv7cLwMiCD6g25KERCtJu9XPvNw97YIbcDUF0T0F6asGNP19X9Q5PbHIwGSJMvSlkJowMbNhwVDAiWS/X7MoWJkbyYYvSb22Mw4I8QUOltcg3aUT8kSUpGhjVMxWVRqX3VA1bI8Fc2xpw727NaWAHNfDDvZxgRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742241235; c=relaxed/simple;
	bh=uA2fkfdELeuu90pMhI+WG6WrQDFwQwG5qcqnZOMntV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cKKTfY8Bjm2TAt/f6XFHfUtnBkfjljEInLouZWtaCHbL/na4LZhF/g8i9aThBeZUNRUqMXGcJAHw0QTNXsfVgXc60lS4YwEgtoAHXozz523FBI09YiUjY87T+UspCuYfRQIXifkLMravNY11mEl5CYsYNtbTz43VMNgu9jfUm1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=LBbYehBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="LBbYehBh"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53C04C4CEE3;
	Mon, 17 Mar 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1742241233;
	bh=uA2fkfdELeuu90pMhI+WG6WrQDFwQwG5qcqnZOMntV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LBbYehBh0QvTudR7NoVVg1dgalvK6Fm1ssJEPn7zB1bQplKrewJ6trjMMw8qFFB3o
	 hOoI+DNCmVuer2nA3+pkoAj/RLTjkHctkS2u5Nxdq4rUr5FqIPZV8MQpm8sBoLFkBw
	 85sEw/zATaP0zS0ISxWo3OY03uV0uweYq9cMGq8k=
Date: Mon, 17 Mar 2025 15:53:52 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Key update for Chen-Yu Tsai
Message-ID: <20250317-authentic-chamois-of-tornado-cea3a1@lemur>
References: <Z9eRv8P-nZOE_U06@wens.tw>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Z9eRv8P-nZOE_U06@wens.tw>

On Mon, Mar 17, 2025 at 11:06:39AM +0800, Chen-Yu Tsai wrote:
> It seems the copy of my key in the kernel.org key repository has gone
> stale. Please find the most recent update attached.

Updated, thanks!

-K
